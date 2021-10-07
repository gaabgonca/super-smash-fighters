import 'package:another_xlider/another_xlider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters',
            style: TextStyle(color: Colors.black, fontSize: 27)),
        elevation: 1,
        centerTitle: true,
        leading: TextButton(
          child: Text('Close',
              style: TextStyle(color: Colors.black, fontSize: 14)),
          onPressed: () => AutoRouter.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Sort By',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(left: 12, top: 21),
                ),
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 16),
                  child: Column(children: [
                    ListTile(
                      title: Text('Ascending'),
                      trailing: Radio(
                        groupValue: 'Ascending',
                        value: 'Ascending',
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: kFiltersGreen,
                        overlayColor: MaterialStateProperty.all<Color>(
                            kFiltersGreen.withOpacity(0.2)),
                      ),
                    ),
                    ListTile(
                      title: Text('Descending'),
                      trailing: Radio(
                        groupValue: 'Ascending',
                        value: 'Descending',
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: kFiltersGreen,
                        overlayColor: MaterialStateProperty.all<Color>(
                            kFiltersGreen.withOpacity(0.2)),
                      ),
                    ),
                    ListTile(
                      title: Text('Rate'),
                      trailing: Radio(
                        groupValue: 'Ascending',
                        value: 'Rate',
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: kFiltersGreen,
                        overlayColor: MaterialStateProperty.all<Color>(
                            kFiltersGreen.withOpacity(0.2)),
                      ),
                    ),
                    ListTile(
                      title: Text('Descending'),
                      trailing: Radio(
                        groupValue: 'Ascending',
                        value: 'Downloads',
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: kFiltersGreen,
                        overlayColor: MaterialStateProperty.all<Color>(
                            kFiltersGreen.withOpacity(0.2)),
                      ),
                    ),
                  ]),
                ),
                Divider(color: Color.fromRGBO(235, 234, 236, 1), thickness: 1),
                Container(
                  child: Text(
                    'Price',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(left: 12, top: 16),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ 0',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            '\$ 1000',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ],
                      ),
                      FlutterSlider(
                        rangeSlider: true,
                        values: [0, 999],
                        min: 0,
                        max: 1000,
                        trackBar: FlutterSliderTrackBar(
                            activeTrackBar: BoxDecoration(color: kFiltersGreen),
                            inactiveTrackBar:
                                BoxDecoration(color: kFiltersGray)),
                        handler: FlutterSliderHandler(
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                        rightHandler: FlutterSliderHandler(
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                        onDragging: (handlerIndex, lowerValue, upperValue) {},
                      ),
                    ],
                  ),
                ),
                Divider(color: Color.fromRGBO(235, 234, 236, 1), thickness: 1),
                Container(
                  child: Text(
                    'Stars',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(left: 12, top: 16),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: RatingBar(
                      initialRating: 0,
                      maxRating: 5,
                      glow: false,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemSize: 30,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                        full: Image(
                          image: AssetImage('assets/img/yellow_star.png'),
                        ),
                        half: Image(
                          image: AssetImage('assets/img/yellow_star.png'),
                        ),
                        empty: Image(
                          image: AssetImage('assets/img/grey_star.png'),
                        ),
                      ),
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: context.heightPx * 20 / 812,
                ),
                Padding(
                  padding: EdgeInsets.all(35),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(context.widthPx, 40)),
                      elevation: MaterialStateProperty.all<double>(0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kMainFuchsia),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: Text('Apply Filters',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onPressed: () {
                      AutoRouter.of(context).pop();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
