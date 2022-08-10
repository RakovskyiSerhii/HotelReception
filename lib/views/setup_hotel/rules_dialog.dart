part of 'widgets.dart';

class RulesDialog extends StatelessWidget {
  const RulesDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(children: [
          const SizedBox(height: 20),
          const Text(
            'Rules',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('fill the rules'),
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: CupertinoButton.filled(
                child: Text("ok".toUpperCase(),
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
          SizedBox(height: MediaQuery.of(context).viewPadding.bottom + 10)
        ]),
      ),
    );
  }
}
