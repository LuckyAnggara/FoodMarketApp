part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth = MediaQuery.of(context).size.width - (2 * kDefaultMargin);
    return ListView(
      children: [
        Column(
          children: [
            ///HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontStyle1,
                      ),
                      Text(
                        'Let\'s get some foods',
                        style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(
                            (context.read<UserCubit>().state as UserLoaded).user!.picturePath,
                          ),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),

            ///FOOD CARD
            Container(
              height: 258,
              width: double.infinity,
              child: BlocBuilder<FoodCubit, FoodState>(builder: (_, state) {
                if (state is FoodLoaded) {
                  return ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: state.foods!
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(
                                      left: (e == mockFood.first) ? kDefaultMargin : 0,
                                      right: kDefaultMargin),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(() => FoodDetailsPage(
                                            onBackButtonPressed: () {
                                              Get.back();
                                            },
                                            transaction: Transaction(
                                                food: e,
                                                user:
                                                    (context.read<UserCubit>().state as UserLoaded)
                                                        .user!),
                                          ));
                                    },
                                    child: FoodCard(
                                      food: e,
                                    ),
                                  ),
                                ))
                            .toList(),
                      )
                    ],
                  );
                } else {
                  return loadingIndicator;
                }
              }),
            ),

            ///LIST OF FOOD
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['New Taste', 'Popular', 'Recommended'],
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
                  BlocBuilder<FoodCubit, FoodState>(builder: (_, state) {
                    if (state is FoodLoaded) {
                      List<Food> foods = state.foods!
                          .where((element) => element.types.contains((selectedIndex == 0)
                              ? FoodType.new_food
                              : (selectedIndex == 1)
                                  ? FoodType.popular
                                  : FoodType.recommended))
                          .toList();

                      return Column(
                        children: foods
                            .map((e) => Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      kDefaultMargin, 0, kDefaultMargin, 16),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(() => FoodDetailsPage(
                                            onBackButtonPressed: () {
                                              Get.back();
                                            },
                                            transaction: Transaction(
                                                food: e,
                                                user:
                                                    (context.read<UserCubit>().state as UserLoaded)
                                                        .user!),
                                          ));
                                    },
                                    child: FoodListItem(
                                      food: e,
                                      itemWidth: listItemWidth,
                                    ),
                                  ),
                                ))
                            .toList(),
                      );
                    } else {
                      return Center(
                        child: loadingIndicator,
                      );
                    }
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        )
      ],
    );
  }
}
