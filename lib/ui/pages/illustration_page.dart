part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String? buttonTitle2;
  final Function buttonTap1;
  final Function? buttonTap2;

  const IllustrationPage({
    required this.title,
    required this.subtitle,
    required this.picturePath,
    required this.buttonTap1,
    required this.buttonTitle1,
    this.buttonTap2,
    this.buttonTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(picturePath))),
          ),
          Text(
            title,
            style: blackFontStyle3.copyWith(fontSize: 20),
          ),
          Text(
            subtitle,
            style: greyFontStyle.copyWith(
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 200,
            height: 45,
            margin: EdgeInsets.only(top: 30, bottom: 12),
            child: ElevatedButton(
              onPressed: buttonTap1(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kMainColor),
              ),
              child:
                  Text(buttonTitle1, style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500)),
            ),
          ),
          buttonTap2 == null
              ? SizedBox()
              : Container(
                  width: 200,
                  height: 45,
                  margin: EdgeInsets.only(top: 30, bottom: 12),
                  child: ElevatedButton(
                    onPressed: buttonTap2!(),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all('8D92A3'.toColor()),
                    ),
                    child: Text(buttonTitle2!,
                        style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500)),
                  ),
                ),
        ],
      ),
    );
  }
}
