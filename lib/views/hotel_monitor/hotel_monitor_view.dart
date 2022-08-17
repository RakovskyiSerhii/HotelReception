import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_reception/model/dto/setup_dto.dart';
import 'package:hotel_reception/model/ui/hotel_model.dart';
import 'package:hotel_reception/views/hotel_monitor/hotel_monitor_cubit.dart';
import 'package:hotel_reception/views/hotel_monitor/widget/chart.dart';
import 'package:hotel_reception/views/hotel_monitor/widget/main_hotel_info.dart';
import 'package:hotel_reception/views/hotel_monitor/widget/room_item_widget.dart';

class HotelMonitorView extends StatelessWidget {
  const HotelMonitorView({Key? key, required this.setup}) : super(key: key);
  final SetupDto setup;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelMonitorCubit(setup),
      child: BlocConsumer<HotelMonitorCubit, HotelMonitorState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: _buildMonitor(state.model, context),
            floatingActionButton: FloatingActionButton(
                onPressed:
                    BlocProvider.of<HotelMonitorCubit>(context).nextSpeed,
                child: const Icon(Icons.fast_forward)),
          );
        },
      ),
    );
  }

  Widget _buildMonitor(HotelMonitorModel hotelModel, BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hotel monitiring',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              MainHotelInfo(monitorModel: hotelModel),
              const SizedBox(height: 10),
              ReveneuChart(hotelModel.netRevenue),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 0,
                children: hotelModel.list.map(HotelRoomWidget.new).toList(),
              )
            ],
          ),
        ),
      ),
    );
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 5,
      mainAxisSpacing: 0,
      children: hotelModel.list.map(HotelRoomWidget.new).toList(),
    );
  }
}
