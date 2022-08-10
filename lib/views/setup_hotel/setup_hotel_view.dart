part of 'widgets.dart';

const _maxRoomsCount = 48;

class SetupHotelView extends StatelessWidget {
  const SetupHotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
      body: Material(
        child: ChangeNotifierProvider(
          create: (context) => RoomsController(),
          child: Consumer<RoomsController>(
            builder: (BuildContext context, RoomsController controller, _) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: constraints.maxHeight),
                        child: SingleChildScrollView(
                          child: IntrinsicHeight(
                            child: Column(children: [
                              const SizedBox(
                                height: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Text('Room service'),
                              ),
                              _ServiceSelector(
                                seletedService: controller.roomService,
                                onServiceChanged: (service) =>
                                    controller.roomService = service,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Text('Rooms count, max 48'),
                              ),
                              const _RoomCountSelectorWidget(),
                              // Slider(
                              //     value: controller.dayTime.toDouble(),
                              //     min: 1,
                              //     max: 3,
                              //     onChanged: (time) {
                              //       controller.dayTime = time.toInt();
                              //     }),
                              const SizedBox(height: 30),
                            ]),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: CupertinoButton.filled(
                                    onPressed: () {
                                      print(controller.buildSetup());
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (_) => HotelMonitorView(
                                                    setup:
                                                        controller.buildSetup(),
                                                  )),
                                          (route) => false);
                                    },
                                    child: Text(
                                      'Continue'.toUpperCase(),
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                  flex: 1,
                                  child: CupertinoButton(
                                      onPressed: () {
                                        // RulesDialog.show(context);
                                        CupertinoScaffold
                                            .showCupertinoModalBottomSheet(
                                                context: context,
                                                builder: (context) =>
                                                    RulesDialog());
                                      },
                                      child: const Icon(
                                          CupertinoIcons.question_circle)))
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
