part of 'widgets.dart';

class _ServiceSelector extends StatelessWidget {
  const _ServiceSelector(
      {Key? key,
      required this.onServiceChanged,
      this.seletedService = Service.normal})
      : super(key: key);

  final Function(Service service) onServiceChanged;
  final Service seletedService;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Service.values
          .map((service) => Row(
                children: [
                  Radio<Service>(
                    value: service,
                    groupValue: seletedService,
                    onChanged: (Service? changed) =>
                        onServiceChanged(changed ?? Service.normal),
                  ),
                  Text(service.name)
                ],
              ))
          .toList(),
    );
  }
}

class _RoomCountSelectorWidget extends StatelessWidget {
  const _RoomCountSelectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RoomsController>(
      builder: (context, controller, _) {
        return Column(
          children: RoomType.values
              .map((type) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                            '${type.name}: ${controller.getCountByType(type)}x'),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Slider(
                                min: 0,
                                max: 48,
                                value:
                                    controller.getCountByType(type).toDouble(),
                                onChanged: (changedValue) {
                                  controller.updateCountByType(
                                      type, changedValue.toInt());
                                }),
                          )
                        ],
                      ),
                    ],
                  ))
              .toList(),
        );
      },
    );
  }
}
