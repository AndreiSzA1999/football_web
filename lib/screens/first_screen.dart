import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:football_web/services/teams_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

class TeamsList extends StatefulWidget {
  @override
  _TeamsListState createState() => _TeamsListState();
}

class _TeamsListState extends State<TeamsList> {
  @override
  void initState() {
    super.initState();
  }

  List<EquipoStandings> equipos = [
    EquipoStandings(
        "Manchester City FC",
        "ENG",
        "ENG",
        "UEFA",
        "1,928",
        "+1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/382.png",
        "https://www.espn.com/soccer/club/_/id/382/manchester-city"),
    EquipoStandings(
        "FC Bayern München",
        "GER",
        "GER",
        "UEFA",
        "1,907",
        "-1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/132.png",
        "https://www.espn.com/soccer/club/_/id/132/bayern-munich"),
    EquipoStandings(
        "FC Barcelona",
        "ESP",
        "ESP",
        "UEFA",
        "1,854",
        "0",
        "https://a.espncdn.com/i/teamlogos/soccer/500/83.png",
        "https://www.espn.com/soccer/club/_/id/83/barcelona"),
    EquipoStandings(
        "Liverpool FC",
        "ENG",
        "ENG",
        "UEFA",
        "1,845",
        "+1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/364.png",
        "https://www.espn.com/soccer/club/_/id/364/liverpool"),
    EquipoStandings(
        "Real Madrid CF",
        "ESP",
        "ESP",
        "UEFA",
        "1,786",
        "-1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/86.png",
        "https://www.espn.com/soccer/club/_/id/86/real-madrid"),
    EquipoStandings(
        "Chelsea FC",
        "ENG",
        "ENG",
        "UEFA",
        "1,752",
        "+4",
        "https://a.espncdn.com/i/teamlogos/soccer/500/363.png",
        "https://www.espn.com/soccer/club/_/id/363/chelsea"),
    EquipoStandings(
        "Paris Saint-Germain",
        "FRA",
        "FRA",
        "UEFA",
        "1,750",
        "0",
        "https://a.espncdn.com/i/teamlogos/soccer/500/160.png",
        "https://www.espn.com/soccer/team/_/id/160/"),
    EquipoStandings(
        "Juventus",
        "ITA",
        "ITA",
        "UEFA",
        "1,749",
        "-2",
        "https://a.espncdn.com/i/teamlogos/soccer/500/111.png",
        "https://www.espn.com/soccer/club/_/id/111/juventus"),
    EquipoStandings(
        "Club Atlético de Madrid",
        "ESP",
        "ESP",
        "UEFA",
        "1,676",
        "-1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/1068.png",
        "https://www.espn.com/soccer/club/_/id/1068/atletico-madrid"),
    EquipoStandings(
        "Manchester United FC",
        "ENG",
        "ENG",
        "UEFA",
        "1,643",
        "+1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/360.png",
        "https://www.espn.com/soccer/club/_/id/360/manchester-united"),
    EquipoStandings(
        "Tottenham Hotspur FC",
        "ENG",
        "ENG",
        "UEFA",
        "1,628",
        "-2",
        "https://a.espncdn.com/i/teamlogos/soccer/500/367.png",
        "https://www.espn.com/soccer/club/_/id/367/tottenham-hotspur"),
    EquipoStandings(
        "Borussia Dortmund",
        "GER",
        "GER",
        "UEFA",
        "1,541",
        "0",
        "https://a.espncdn.com/i/teamlogos/soccer/500/124.png",
        "https://www.espn.com/soccer/club/_/id/124/borussia-dortmund"),
    EquipoStandings(
        "Sevilla FC",
        "ESP",
        "ESP",
        "UEFA",
        "1,531",
        "0",
        "https://a.espncdn.com/i/teamlogos/soccer/500/243.png",
        "https://www.espn.com/soccer/club/_/id/243/sevilla-fc"),
    EquipoStandings(
        "FC Porto",
        "POR",
        "POR",
        "UEFA",
        "1,522",
        "0",
        "https://a.espncdn.com/i/teamlogos/soccer/500/437.png",
        "https://www.espn.com/soccer/team/_/id/437/fc-porto"),
    EquipoStandings(
        "RB Leipzig",
        "GER",
        "GER",
        "UEFA",
        "1,441",
        "+1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/11420.png",
        "https://www.espn.com/soccer/club/_/id/11420/rb-leipzig"),
    EquipoStandings(
        "AS Roma",
        "ITA",
        "ITA",
        "UEFA",
        "1,420",
        "-1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/104.png",
        "https://www.espn.com/soccer/club/_/id/104/as-roma"),
    EquipoStandings(
        "Arsenal FC",
        "ENG",
        "ENG",
        "UEFA",
        "1,399",
        "+2",
        "https://a.espncdn.com/i/teamlogos/soccer/500/359.png",
        "https://www.espn.com/soccer/club/_/id/359/arsenal"),
    EquipoStandings(
        "SSC Napoli",
        "ITA",
        "ITA",
        "UEFA",
        "1,373",
        "-1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/114.png",
        "https://www.espn.com/soccer/club/_/id/114/napoli"),
    EquipoStandings(
        "Palmeiras",
        "BRA",
        "BRA",
        "CONMEBOL",
        "1,353",
        "+2",
        "https://a.espncdn.com/i/teamlogos/soccer/500/2029.png",
        "https://www.espn.com/soccer/team/_/id/2029/palmeiras"),
    EquipoStandings(
        "Atalanta BC",
        "ITA",
        "ITA",
        "UEFA",
        "1,350",
        "+1",
        "https://a.espncdn.com/i/teamlogos/soccer/500/105.png",
        "https://www.espn.com/soccer/club/_/id/105/atalanta"),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: size.width,
            height: size.height * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text("WORLD SUPER LEAGUE",
                        style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("The Super League has thankfully collapsed.",
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text("www.worldsuperleague.eu",
                                style: GoogleFonts.robotoCondensed(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100)),
                            hoverColor: Color(0xfffafafa),
                            onTap: () {
                              js.context.callMethod(
                                  'open', ["https://www.WorldSuperLeague.eu "]);
                            },
                          ),
                          Text(
                            " offers an algorithm and AI battle which will become a real",
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                      Text(
                        "in the pre season to satisfy the TV markets, the biggest sponsoring brands and Fans Worldwide. We keep the essence of football, grassroots and domestic leagues intact.",
                        style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        child: Text(
                            "World Super League Football Will Happen 'In a Few Years,' Says Director of EPFL",
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w100)),
                        hoverColor: Color(0xfffafafa),
                        onTap: () {
                          js.context.callMethod('open', [
                            "https://bleacherreport.com/articles/2662628-world-super-league-football-will-happen-in-a-few-years-says-director-of-epfl"
                          ]);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(height: size.height * 0.05),
        Container(
            width: size.width * 0.6,
            margin: EdgeInsets.only(left: size.width * 0.1),
            child: Text("RANKING 2021/2022",
                style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: size.height * 0.05),
        MediaQuery.of(context).size.width > 1400
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: size.width * 0.1),
                    width: 700,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Th(),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: equipos.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 70,
                                          child: Center(
                                            child: Text("${index + 1}",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Row(
                                            children: [
                                              Image.network(
                                                equipos[index].logo,
                                                height: 30,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              equipos[index].teamName.length <
                                                      15
                                                  ? InkWell(
                                                      onTap: () {
                                                        js.context.callMethod(
                                                            'open', [
                                                          equipos[index].link
                                                        ]);
                                                      },
                                                      child: Text(
                                                          equipos[index]
                                                              .teamName,
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                    )
                                                  : InkWell(
                                                      onTap: () {
                                                        js.context.callMethod(
                                                            'open', [
                                                          equipos[index].link
                                                        ]);
                                                      },
                                                      child: Text(
                                                          equipos[index]
                                                                  .teamName
                                                                  .substring(
                                                                      0, 15) +
                                                              "..",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                    )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          child: Center(
                                            child: Text(equipos[index].liga,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          child: Center(
                                            child: Text(equipos[index].pais,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        Container(
                                          width: 120,
                                          child: Center(
                                            child: Text(
                                                equipos[index].confederacion,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          child: Center(
                                            child: Text(equipos[index].points,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The Super League has thankfully collapsed.",
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: Text("www.worldsuperleague.eu",
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100)),
                              hoverColor: Color(0xfffafafa),
                              onTap: () {
                                js.context.callMethod('open',
                                    ["https://www.WorldSuperLeague.eu "]);
                              },
                            ),
                            Text(
                              " offers an algorithm and AI battle ",
                              style: GoogleFonts.robotoCondensed(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        Text(
                          "which will become a real one in the pre season to satisfy the TV markets, the biggest sponsoring brands and Fans Worldwide. We keep the essence of football, grassroots and domestic leagues intact.",
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Text(
                              "World Super League Football Will Happen 'In a Few Years,' Says Director of EPFL",
                              style: GoogleFonts.robotoCondensed(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100)),
                          hoverColor: Color(0xfffafafa),
                          onTap: () {
                            js.context.callMethod('open', [
                              "https://bleacherreport.com/articles/2662628-world-super-league-football-will-happen-in-a-few-years-says-director-of-epfl"
                            ]);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: size.width * 0.1),
                    width: 700,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Th(),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: equipos.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 70,
                                          child: Center(
                                            child: Text("${index + 1}",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            js.context.callMethod(
                                                'open', [equipos[index].link]);
                                          },
                                          child: Container(
                                            width: 200,
                                            child: Row(
                                              children: [
                                                Image.network(
                                                  equipos[index].logo,
                                                  height: 30,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                equipos[index].teamName.length <
                                                        15
                                                    ? InkWell(
                                                        onTap: () {
                                                          js.context.callMethod(
                                                              'open', [
                                                            equipos[index].link
                                                          ]);
                                                        },
                                                        child: Text(
                                                            equipos[index]
                                                                .teamName,
                                                            style: GoogleFonts
                                                                .montserrat(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                      )
                                                    : InkWell(
                                                        onTap: () {
                                                          js.context.callMethod(
                                                              'open', [
                                                            equipos[index].link
                                                          ]);
                                                        },
                                                        child: Text(
                                                            equipos[index]
                                                                    .teamName
                                                                    .substring(
                                                                        0, 15) +
                                                                "..",
                                                            style: GoogleFonts
                                                                .montserrat(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                      )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          child: Center(
                                            child: Text(equipos[index].liga,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          child: Center(
                                            child: Text(equipos[index].pais,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        Container(
                                          width: 120,
                                          child: Center(
                                            child: Text(
                                                equipos[index].confederacion,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          child: Center(
                                            child: Text(equipos[index].points,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size.width * 0.1),
                    width: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The Super League has thankfully collapsed.",
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: Text("www.worldsuperleague.eu",
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100)),
                              hoverColor: Color(0xfffafafa),
                              onTap: () {
                                js.context.callMethod('open',
                                    ["https://www.WorldSuperLeague.eu "]);
                              },
                            ),
                            Text(
                              " offers an algorithm and AI battle ",
                              style: GoogleFonts.robotoCondensed(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        Text(
                          "which will become a real one in the pre season to satisfy the TV markets, the biggest sponsoring brands and Fans Worldwide. We keep the essence of football, grassroots and domestic leagues intact.",
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Text(
                              "World Super League Football Will Happen 'In a Few Years,' Says Director of EPFL",
                              style: GoogleFonts.robotoCondensed(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100)),
                          hoverColor: Color(0xfffafafa),
                          onTap: () {
                            js.context.callMethod('open', [
                              "https://bleacherreport.com/articles/2662628-world-super-league-football-will-happen-in-a-few-years-says-director-of-epfl"
                            ]);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
        SizedBox(height: size.height * 0.1),
      ],
    )));
  }
}

class Th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 70,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text("POSITION",
                  style: GoogleFonts.montserrat(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        Container(
          width: 200,
          child: Center(
            child: Text("CLUB",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: 80,
          child: Center(
            child: Text("COUNTRY",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: 70,
          child: Center(
            child: Text("LEAGUE",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: 120,
          child: Center(
            child: Text("CONF/FED CONTINENT",
                style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: 70,
          child: Center(
            child: Text("COEF",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
