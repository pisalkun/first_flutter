import 'package:flutter/cupertino.dart';
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 120, 156, 185),
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'currency converter',
          style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: result.toStringAsFixed(3),
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w200,
                      color: CupertinoColors.white,
                    ),
                  ),
                  const TextSpan(
                    text: ' រ',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                    color: CupertinoColors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top:5.0 ),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 4014.40;
                  });
                  debugPrint(result.toString());
                },
                color: CupertinoColors.black,
                child: const Text(
                              'Convert', 
                              style: TextStyle(
                                color: CupertinoColors.white
                              ),
                            ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
