part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  final Transaction transaction;
  PaymentPage({required this.transaction});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isLoading = false;

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
                                image: NetworkImage(widget.transaction.food.picturePath!),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 198,
                              child: Text(
                                widget.transaction.food.name,
                                style: blackFontStyle2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id-ID', symbol: 'IDR ', decimalDigits: 0)
                                  .format(widget.transaction.food.price),
                              style: greyFontStyle.copyWith(fontSize: 13),
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      '${widget.transaction.quantity} item(s)',
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
                        widget.transaction.food.name,
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - kDefaultMargin - 5,
                      child: Text(
                        NumberFormat.currency(locale: 'id-ID', symbol: 'IDR ', decimalDigits: 0)
                            .format(widget.transaction.total),
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
                            .format(widget.transaction.total! * 0.1),
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
                            .format(widget.transaction.total! * 1.1 + 5000),
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
                        widget.transaction.user.name,
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
                        widget.transaction.user.phoneNumber!,
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
                        widget.transaction.user.address,
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
                        widget.transaction.user.houseNumber!,
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
                        widget.transaction.user.city!,
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
          (isLoading)
              ? Center(child: loadingIndicator)
              : Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: kDefaultMargin),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultMargin, vertical: 16),
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      bool result = await context.read<TransactionCubit>().submitTransaction(
                            widget.transaction.copyWith(
                                dateTime: DateTime.now(),
                                total: (widget.transaction.total! * 1.1).toInt() + 5000),
                          );
                      if (result == true) {
                        Get.to(() => SuccessOrderPage());
                      } else {
                        setState(() {
                          isLoading = false;
                          Get.snackbar(
                            "title",
                            "message",
                            backgroundColor: "D9435E".toColor(),
                            icon: Icon(
                              MdiIcons.closeCircleOutline,
                              color: Colors.white,
                            ),
                            titleText: Text(
                              'Transaction failed',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                            messageText: Text(
                              'Please try again later.',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                              ),
                            ),
                          );
                        });
                      }
                    },
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
