import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/models/event_model.dart';
import 'package:interview/theme/app_colors.dart';

class Details extends StatelessWidget {
  final EventModel eventModel;

  const Details({Key key, this.eventModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.grey[300], BlendMode.darken),
                  image: AssetImage(eventModel.image),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: bodyLight,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            left: 5,
            top: 25,
          ),
          Positioned(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/fierceninja.png'),
              radius: 25,
            ),
            top: 25,
            right: 15,
          ),
          Positioned(
            top: 190,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2,
              child: Container(
                decoration: BoxDecoration(
                  color: bodyLight,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            eventModel.eventName,
                            style: GoogleFonts.poppins(
                                color: topLevents,
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: detStar),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: bodyLight,
                                  ),
                                  Text(
                                    eventModel.rating.toString(),
                                    style: TextStyle(color: bodyLight),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage('assets/location.png'),
                            color: detStar,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            eventModel.location,
                            style: GoogleFonts.poppins(
                                color: location,
                                fontWeight: FontWeight.w200,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        eventModel.duration,
                        style: GoogleFonts.poppins(
                            color: date,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 300,
                            child: Stack(
                              children: [
                                CircleAvatar(backgroundImage: AssetImage('assets/fierceninja.png'),),
                                Positioned(left: 25,child: CircleAvatar(backgroundImage: AssetImage('assets/fierceninja.png'),),),
                                Positioned(left: 50,child: CircleAvatar(backgroundImage: AssetImage('assets/fierceninja.png'),),),
                                Positioned(left: 75,child: CircleAvatar(backgroundImage: AssetImage('assets/fierceninja.png'),),),
                                Positioned(child: Text('+400 Others attending', style: GoogleFonts.poppins(color: location, fontSize: 14, fontWeight: FontWeight.w300),), left: 140, top: 10,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Event Overview', style: GoogleFonts.poppins(color: overview, fontSize: 18),),
                          SizedBox(width: 25,),
                          Text('Event Plan', style: GoogleFonts.poppins(color: plan, fontSize: 18),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(eventModel.description, style:GoogleFonts.poppins(color: detail, fontSize: 16, fontWeight: FontWeight.w400),),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: overview),width: 200, height: 70,child: Center(child: Text('Register Now', style: GoogleFonts.poppins(color: bodyLight,fontSize:20, fontWeight: FontWeight.w400),),),),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
