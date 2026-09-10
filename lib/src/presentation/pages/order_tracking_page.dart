import 'package:flutter/material.dart';

import '../../core/di/service_locator.dart';
import '../../core/logging/app_logger.dart';
import '../../domain/entities/order.dart';
import '../../domain/usecases/create_order_use_case.dart';
import '../../domain/usecases/get_order_status_use_case.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  late final CreateOrderUseCase _createOrder;
  late final GetOrderStatusUseCase _getStatus;
  late final AppLogger _logger;

  final TextEditingController _recipientController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _orderIdController = TextEditingController();

  Order? _currentOrder;
  String _message = 'Create an order to get started.';

  @override
  void initState() {
    super.initState();
    _createOrder = getIt<CreateOrderUseCase>();
    _getStatus = getIt<GetOrderStatusUseCase>();
    _logger = getIt<AppLogger>();
  }

  @override
  void dispose() {
    _recipientController.dispose();
    _addressController.dispose();
    _orderIdController.dispose();
    super.dispose();
  }

  Future<void> _create() async {
    if (_recipientController.text.isEmpty || _addressController.text.isEmpty) {
      setState(() {
        _message = 'Recipient and address are required.';
      });
      return;
    }

    final Order order = await _createOrder(
      recipientName: _recipientController.text,
      address: _addressController.text,
    );

    _orderIdController.text = order.id;

    setState(() {
      _currentOrder = order;
      _message = 'Order ${order.id} created.';
    });
    _logger.info(_message);
  }

  Future<void> _lookup() async {
    final Order? order = await _getStatus(_orderIdController.text.trim());
    setState(() {
      _currentOrder = order;
      _message = order == null ? 'Order not found.' : 'Order loaded.';
    });
  }

  Future<void> _advance() async {
    final Order? order = await _getStatus.advance(_orderIdController.text.trim());
    setState(() {
      _currentOrder = order;
      _message = order == null ? 'Order not found.' : 'Status advanced.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Courier Orders')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            TextField(
              key: const Key('recipientField'),
              controller: _recipientController,
              decoration: const InputDecoration(labelText: 'Recipient'),
            ),
            TextField(
              key: const Key('addressField'),
              controller: _addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              key: const Key('createOrderButton'),
              onPressed: _create,
              child: const Text('Create order'),
            ),
            const Divider(height: 24),
            TextField(
              key: const Key('orderIdField'),
              controller: _orderIdController,
              decoration: const InputDecoration(labelText: 'Order ID'),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: <Widget>[
                ElevatedButton(
                  key: const Key('lookupOrderButton'),
                  onPressed: _lookup,
                  child: const Text('Lookup'),
                ),
                ElevatedButton(
                  key: const Key('advanceStatusButton'),
                  onPressed: _advance,
                  child: const Text('Advance status'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(_message, key: const Key('statusMessage')),
            if (_currentOrder != null) ...<Widget>[
              const SizedBox(height: 8),
              Text('Current status: ${_currentOrder!.status.name}'),
            ],
          ],
        ),
      ),
    );
  }
}
