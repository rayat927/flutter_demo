import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({super.key});

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {

  int _index = 0;

  Map<String, double> dataMap = {
    "Flutter": 0.9,
    "React": 0.1,

  };

  Map<String, double> dataMap2 = {
    "Flutter": 8,
    "React": 2,

  };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
          // card height
        child: PageView(

          controller: PageController(viewportFraction: 0.7),
          onPageChanged: (int index) => setState(() => _index = index),
          children: [
          Card(
            color: Colors.red[300],

          // elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Align(

              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                child: Container(
                  padding: EdgeInsets.all(8),
                    decoration:BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    child: Text('Test', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),)),
              ),
              alignment: Alignment.topLeft,
          ),


          Align(child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.0, vertical: 4),
            child: Container(
                padding: EdgeInsets.all(8),
                decoration:BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Text('Test', style: TextStyle(fontSize: 12, color: Colors.white),)),
          ),
            alignment: Alignment.topLeft,
          ),

        Align(
          alignment: Alignment.center,
          child: PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 2,
            colorList: [Colors.red[400]!, Colors.grey[900]!],
            initialAngleInDegree: 0,
            chartType: ChartType.disc,
            ringStrokeWidth: 32,
            // centerText: "90%",
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: false,
              // legendShape: _BoxShape.circle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: false,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),
            centerTextStyle: TextStyle(
              fontSize: 50,
              background: null,
              backgroundColor: Colors.redAccent.withOpacity(0.5)
            ),
            // gradientList: ---To add gradient colors---
            // emptyColorGradient: ---Empty Color gradient---
          ),
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 8, 2, 0),
              child: Row(
                children: [
                  Text('test: ', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('90%')
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 8, 8, 0),
                child: Icon(
                  Icons.arrow_forward,
                  size: 20,
                  weight: 500,
                ),
              ),
            )
          ],
        )
      ],
    )
    ),
            Card(
                color: Colors.blue[300],
                elevation: 6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                        child: Container(
                            padding: EdgeInsets.all(8),
                            decoration:BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            ),
                            child: Text('Test', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),)),
                      ),
                      alignment: Alignment.topLeft,
                    ),


                    Align(child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 25.0, vertical: 4),
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration:BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          ),
                          child: Text('Test', style: TextStyle(fontSize: 12, color: Colors.white),)),
                    ),
                      alignment: Alignment.topLeft,
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: PieChart(
                        dataMap: dataMap2,
                        animationDuration: Duration(milliseconds: 800),
                        chartLegendSpacing: 32,
                        chartRadius: MediaQuery.of(context).size.width / 2,
                        colorList: [Colors.blue[400]!, Colors.grey[900]!],
                        initialAngleInDegree: 0,
                        chartType: ChartType.disc,
                        ringStrokeWidth: 32,
                        // centerText: "90%",
                        legendOptions: LegendOptions(
                          showLegendsInRow: false,
                          legendPosition: LegendPosition.right,
                          showLegends: false,
                          // legendShape: _BoxShape.circle,
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValueBackground: true,
                          showChartValues: false,
                          showChartValuesInPercentage: false,
                          showChartValuesOutside: false,
                          decimalPlaces: 1,
                        ),
                        centerTextStyle: TextStyle(
                            fontSize: 50,
                            background: null,
                            backgroundColor: Colors.redAccent.withOpacity(0.5)
                        ),
                        // gradientList: ---To add gradient colors---
                        // emptyColorGradient: ---Empty Color gradient---
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 8, 2, 0),
                          child: Row(
                            children: [
                              Text('test: ', style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('80%')
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 8, 8, 0),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 20,
                              weight: 500,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
            ),
    ],

    )));
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Carousel $carouselIndex'),
        SizedBox(
          // you may want to use an aspect ratio here for tablet support
          height: 200.0,
          child: PageView.builder(
            // store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }
}
