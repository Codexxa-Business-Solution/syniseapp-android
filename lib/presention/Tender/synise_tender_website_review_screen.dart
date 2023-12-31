import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';





class TenderWebsiteReview extends StatefulWidget {

  final VoidCallback onNext;

  const TenderWebsiteReview({Key? key, required this.onNext}) : super(key: key);

  @override
  State<TenderWebsiteReview> createState() => _TenderWebsiteReviewState();
}

class _TenderWebsiteReviewState extends State<TenderWebsiteReview> with SingleTickerProviderStateMixin{



  bool _isVertical = false;
  IconData? _selectedIcon;

  double _rating = 0.5;
  TextEditingController suggestionController = TextEditingController();
  final suggestionFocus = FocusNode();




  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 5,
                    (context, index) {
                  return  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.03,
                          right: SizeConfig.screenWidth * 0.02,
                          top: SizeConfig.screenHeight * 0.025,
                          bottom: SizeConfig.screenHeight * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Auction Team Support",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Robot_Regular'),
                              // textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RatingBar.builder(
                            initialRating: 3.5,
                            minRating: 0.5,
                            direction:
                            _isVertical ? Axis.vertical : Axis.horizontal,
                            allowHalfRating: true,
                            unratedColor: CommonColor
                                .PROFILE_FRAGMENT_REVIEWS_STAR_COLOR,
                            itemCount: 5,
                            itemSize: 25.0,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                            itemBuilder: (context, _) => Icon(
                              _selectedIcon ?? Icons.star_rate,
                              color: CommonColor.RATING_STAR_COLOR,
                            ),
                            ignoreGestures: true,
                            onRatingUpdate: (rating) {
                              setState(() {
                                _rating = rating;
                              });
                            },
                            updateOnDrag: true,
                          )
                        ],
                      )
                    ],
                  );
                },
              )),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: SizeConfig.screenHeight*0.02,
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                addSuggestion(SizeConfig.screenHeight, SizeConfig.screenWidth)
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget allReview(double parentHeight, double parentWidth) {
    return SizedBox(
      height: parentHeight * 0.6,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.03,
                    right: SizeConfig.screenWidth * 0.02,
                    top: SizeConfig.screenHeight * 0.02,
                    bottom: SizeConfig.screenHeight * 0.02,
                  ),
                  child: const Text("Auction Team Support",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Robot_Regular'),
                    // textAlign: TextAlign.justify,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: parentHeight * .0),
                        child: Column(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 0.5,
                              direction:
                              _isVertical ? Axis.vertical : Axis.horizontal,
                              allowHalfRating: true,
                              unratedColor: CommonColor.PROFILE_FRAGMENT_REVIEWS_STAR_COLOR,
                              itemCount: 5,
                              itemSize: 25.0,
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 5.0),
                              itemBuilder: (context, _) => Icon(
                                _selectedIcon ?? Icons.star_rate,
                                color: CommonColor.RATING_STAR_COLOR,
                              ),
                              ignoreGestures: true,
                              onRatingUpdate: (rating) {
                                setState(() {
                                  _rating = rating;
                                });
                              },
                              updateOnDrag: true,
                            ),
                          ],
                        ))
                  ],
                )
              ],
            );
            //  title: Text("List item $index"));
          }),
    );
  }

  Widget addSuggestion(double parentHeight, double parentWidth) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02, left: parentWidth*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Any Other Suggestions",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Robot_Regular'),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.02,
              right: parentWidth * 0.02),
          child: TextFormField(
            controller: suggestionController,
            focusNode: suggestionFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Add Feedback",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black38)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black38)),
            ),
            maxLines: 4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: Container(
              height: parentHeight * 0.06,
              width: parentWidth * 0.6,
              decoration: BoxDecoration(
                color: CommonColor.TENDER_BOX_TEXT,
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto_Bold',
                        fontSize: 15),
                  ))),
        )
      ],
    );
  }
}
