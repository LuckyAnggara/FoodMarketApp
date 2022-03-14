part of 'pages.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Yeay! Completed',
        subtitle: "Now you are able to order\nsome foods as a self reward",
        picturePath: 'assets/images/food_wishes.png',
        buttonTap1: () {},
        buttonTitle1: "Find Foods",
      ),
    );
  }
}
