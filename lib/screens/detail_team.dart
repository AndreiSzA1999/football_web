import 'package:flutter/material.dart';
import 'package:football_web/services/detail_teamProvider.dart';
import 'package:football_web/services/teams_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTeamPage extends StatefulWidget {
  var equipo;

  DetailTeamPage(this.equipo);

  @override
  _DetailTeamPageState createState() => _DetailTeamPageState();
}

class _DetailTeamPageState extends State<DetailTeamPage> {
  @override
  void initState() {
    super.initState();
    provider.getInfo(widget.equipo.link).then((value) => setTeam(value));

    equipoenviado = widget.equipo as EquipoStandings;
  }

  setTeam(DetailTeam value) {
    setState(() {
      team = value;
    });
  }

  EquipoStandings? equipoenviado;

  DetailTeamProvider provider = DetailTeamProvider();

  DetailTeam? team = DetailTeam([]);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: [
        header(size, context),
        Container(
            width: size.width * 0.6,
            height: size.height * 0.1,
            child: Center(
              child: Text(equipoenviado!.liga + " STANDINGS",
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
            )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 300),
          width: size.width * 0.65,
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThDetail(),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: team!.clasificacion.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width * 0.07,
                              child: Center(
                                child: Text("${index + 1}",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              width: size.width * 0.12,
                              child:
                                  team!.clasificacion[index].nombre.length < 20
                                      ? Center(
                                          child: Text(
                                            team!.clasificacion[index].nombre,
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.start,
                                          ),
                                        )
                                      : Center(
                                          child: Text(
                                            team!.clasificacion[index].nombre
                                                    .substring(0, 20) +
                                                "..",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                            ),
                            Container(
                              width: size.width * 0.10,
                              child: Center(
                                child: Text(
                                    team!.clasificacion[index].partidosGanados,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              width: size.width * 0.10,
                              child: Center(
                                child: Text(
                                    team!
                                        .clasificacion[index].partidosEmpatados,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              width: size.width * 0.1,
                              child: Center(
                                child: Text(
                                    team!.clasificacion[index].partidosPerdidos,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              width: size.width * 0.10,
                              child: Center(
                                child: Text(team!.clasificacion[index].puntos,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                        Divider()
                      ],
                    ),
                  );
                }),
          ]),
        ),
        SizedBox(height: size.height * 0.1),
      ],
    ));
  }

  Container header(Size size, BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.15,
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.02,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 55,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          Image.network(equipoenviado!.logo),
          SizedBox(
            width: size.width * 0.01,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(equipoenviado!.teamName,
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}

class ThDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.07,
          child: Center(
            child: Text("Position",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: size.width * 0.12,
          child: Center(
            child: Text("Teams",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: size.width * 0.1,
          child: Center(
            child: Text("WIN",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: size.width * 0.1,
          child: Center(
            child: Text("DRAW",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: size.width * 0.1,
          child: Center(
            child: Text("LOSS",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
          child: Container(
            width: size.width * 0.1,
            child: Center(
              child: Text("POINTS",
                  style: GoogleFonts.montserrat(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}
