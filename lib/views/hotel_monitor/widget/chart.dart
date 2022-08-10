import 'package:flutter/material.dart';
import 'package:hotel_reception/model/ui/net_revenue.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

const int _daysMonitoring = 60;

class ReveneuChart extends StatefulWidget {
  const ReveneuChart(this.netRevenue, {Key? key}) : super(key: key);
  final List<NetRevenue> netRevenue;

  @override
  State<ReveneuChart> createState() => _ReveneuChartState();
}

class _ReveneuChartState extends State<ReveneuChart> {
  final List<NetRevenue> netRevenue = List.from([], growable: true);
  ChartSeriesController? _controller;
  @override
  void didUpdateWidget(covariant ReveneuChart oldWidget) {
    netRevenue.clear();
    netRevenue.addAll(
        widget.netRevenue.reversed.take(_daysMonitoring).toList().reversed);
    _controller?.updateDataSource(
      addedDataIndex: netRevenue.length - 1,
      removedDataIndex: widget.netRevenue.length > _daysMonitoring ? 0 : null,
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    netRevenue.addAll(netRevenue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 300,
        child: SfCartesianChart(
          primaryXAxis: DateTimeAxis(),
          primaryYAxis: NumericAxis(),
          series: <ChartSeries>[
            LineSeries<NetRevenue, DateTime>(
              onRendererCreated: (controller) => _controller = controller,
              dataSource: netRevenue,
              xValueMapper: (NetRevenue netRevenue, _) => netRevenue.dateTime,
              yValueMapper: (NetRevenue netRevenue, _) => netRevenue.value,
            )
          ],
          zoomPanBehavior: ZoomPanBehavior(
            zoomMode: ZoomMode.x,
          ),
        ),
      ),
    );
  }
}
