part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;
  const PaymentPage({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {},
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          ///Bagian Atas
          Container(
            margin: EdgeInsets.only(bottom: kDefaultMargin),
            padding: EdgeInsets.symmetric(horizontal: kDefaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(transaction.food.picturePath!),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 198,
                              child: Text(
                                transaction.food.name,
                                style: blackFontStyle2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id-ID', symbol: 'IDR ', decimalDigits: 0)
                                  .format(transaction.food.price),
                              style: greyFontStyle.copyWith(fontSize: 13),
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      '${transaction.quantity} item(s)',
                      style: greyFontStyle.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    'Details Transaction',
                    style: blackFontStyle3,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        transaction.food.name,
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        NumberFormat.currency(locale: 'id-ID', symbol: 'IDR ', decimalDigits: 0)
                            .format(transaction.food.price * transaction.quantity!),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'Driver fee',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        NumberFormat.currency(locale: 'id-ID', symbol: 'IDR ', decimalDigits: 0)
                            .format(5000),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'Tax 10%',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        NumberFormat.currency(locale: 'id-ID', symbol: 'IDR ', decimalDigits: 0)
                            .format(transaction.food.price * transaction.quantity! * 0.1),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'Total',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        NumberFormat.currency(locale: 'id-ID', symbol: 'IDR ', decimalDigits: 0)
                            .format(transaction.total),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500, color: '1ABC9C'.toColor()),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          ///Bagian Bawah
          Container(
            margin: EdgeInsets.only(bottom: kDefaultMargin),
            padding: EdgeInsets.symmetric(horizontal: kDefaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deliver to :',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'Name',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        transaction.user.name,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'Phone No.',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        transaction.user.phoneNumber!,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'Address',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        transaction.user.address,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'House No.',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        transaction.user.houseNumber!,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        'City',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        transaction.user.city!,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),

          ///BUTTON
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: kDefaultMargin),
            padding: EdgeInsets.symmetric(horizontal: kDefaultMargin, vertical: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kMainColor),
              ),
              child: Text('Checkout Now',
                  style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}
