part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  // List<Transaction> inProgress =
  //
  // List<Transaction> past =

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
      if (state is TransactionLoaded) {
        if (state.transactions.length == 0) {
          return Center(
              child: IllustrationPage(
            title: 'Ouch! Hungry',
            subtitle: 'Seems you like have not\nororder any food yet',
            picturePath: 'assets/images/love_burger.png',
            buttonTap1: () {},
            buttonTitle1: 'Find foods',
          ));
        } else {
          double listItemWidth = MediaQuery.of(context).size.width - 2 * kDefaultMargin;
          return ListView(
            children: [
              Column(
                children: [
                  ///Header
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: kDefaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultMargin),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Order\'s',
                          style: blackFontStyle1,
                        ),
                        Text(
                          'Wait for the best meal',
                          style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),

                  ///Body
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        CustomTabBar(
                          titles: ['In progress', 'Past orders'],
                          selectedIndex: selectedIndex,
                          onTap: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Builder(builder: (_) {
                          List<Transaction> transaction = (selectedIndex == 0)
                              ? state.transactions
                                  .where((element) =>
                                      element.status == TranscationStatus.on_delivery ||
                                      element.status == TranscationStatus.pending)
                                  .toList()
                              : state.transactions
                                  .where((element) =>
                                      element.status == TranscationStatus.delivered ||
                                      element.status == TranscationStatus.cancelled)
                                  .toList();
                          return Column(
                            children: transaction
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.only(
                                        right: kDefaultMargin, left: kDefaultMargin, bottom: 16),
                                    child: OrderListItem(
                                      transaction: e,
                                      itemWidth: listItemWidth,
                                    ),
                                  ),
                                )
                                .toList(),
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        }
      } else {
        return Center(
          child: loadingIndicator,
        );
      }
    });
  }
}
