part of 'shared.dart';

Color kGreyColor = "8D92A3".toColor();
Color kMainColor = "FFC700".toColor();

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: kGreyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
  fontSize: 22,
  fontWeight: FontWeight.w500,
);
TextStyle blackFontStyle2 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
);

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: kMainColor,
);

const double kDefaultMargin = 24;
