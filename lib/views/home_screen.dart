import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/models/event_model.dart';
import 'package:interview/theme/app_colors.dart';
import 'package:interview/utils/events_lists.dart';
import 'package:interview/views/details_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<EventModel> event = events;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Icon(Icons.search, color: search, size: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 12,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: favTab,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: bodyLight,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Favorite',
                            style: GoogleFonts.poppins(
                                color: bodyLight,
                                fontWeight: FontWeight.w300,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/fierceninja.png'),
                    radius: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text('Hey, Joshua!',
                  style: GoogleFonts.poppins(
                      color: helloText,
                      fontSize: 16,
                      fontWeight: FontWeight.w200)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5.0, right: 25.0),
              child: Text('What area of law do you want to explore?',
                  style: GoogleFonts.prata(
                      color: lawType,
                      fontSize: 30,
                      fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                              height: 40,
                              width: 40,
                              child: SvgPicture.asset(
                                'assets/court.svg',
                                color: Color(0xff8fd4ce),
                              )),
                        ),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: litgationbg),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Litigation',
                        style: GoogleFonts.poppins(
                          color: topLevents,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/money.svg',
                              color: Color(0xffabb0ee),
                            ),
                          ),
                        ),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: bankingbg),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Banking',
                        style: GoogleFonts.poppins(
                          color: topLevents,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/portfolio.svg',
                              color: Color(0xfff0e096),
                            ),
                          ),
                        ),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: coopratebg),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Corporate',
                        style: GoogleFonts.poppins(
                          color: topLevents,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/family.svg',
                              color: Color(0xffeca997),
                            ),
                          ),
                        ),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: familybg),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Family',
                        style: GoogleFonts.poppins(
                          color: topLevents,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15.0),
              child: Text(
                'Top Legal Events',
                style: GoogleFonts.poppins(
                    color: topLevents,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: event.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(
                                eventModel: event[index],
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 4.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 150,
                              height: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.grey[300], BlendMode.darken),
                                    image: AssetImage(event[index].image),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              top: 15.0,
                              child: Text(
                                event[index].eventName,
                                style: GoogleFonts.poppins(color: bodyLight),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              top: 37.0,
                              child: Row(
                                children: [
                                  // ImageIcon(AssetImage('assets/location.png'), color: Colors.white, size: 10,),
                                  // SizedBox(width: 2,),
                                  Container(
                                    width: 120,
                                    child: Text(
                                      event[index].location,
                                      textWidthBasis: TextWidthBasis.parent,
                                      style: GoogleFonts.poppins(
                                          color: bodyLight, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: helloText),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: bodyLight,
                                          ),
                                          Text(
                                            event[index].rating.toString(),
                                            style: TextStyle(color: bodyLight),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                bottom: 15,
                                left: 15),
                            Positioned(
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.favorite,
                                    size: 20, color: bodyLight),
                              ),
                              right: 15,
                              bottom: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                    staggeredTileBuilder: (index) =>
                        StaggeredTile.count(2, index.isEven ? 3 : 2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
