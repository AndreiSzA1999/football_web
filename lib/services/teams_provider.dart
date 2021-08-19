import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class TeamProvier {
  Future<List<EquipoStandings>> getData() async {
    List<EquipoStandings> equipos = [];

    final response = await http.get(
      Uri.parse(
          "https://www.kickalgor.com/club-rating/the-ka-football-club-global-rating-2021/"),
    );

    final body = response.body;

    final html = parse(body);

    List<String> nombres = getTeamNames(html);
    List<String> paisyliga = getCountryAndLeague(html);
    List<String> confederacion = getConfederacion(html);
    List<String> points = getPoints(html);
    List<String> change = getChange(html);

    for (int i = 0; i < nombres.length; i++) {
      equipos.add(EquipoStandings(
        nombres[i],
        paisyliga[i],
        paisyliga[i],
        confederacion[i],
        points[i],
        change[i].replaceFirst("00", ""),
        logos!["${nombres[i]}"],
        links!["${nombres[i]}"],
      ));
    }

    return equipos;
  }

  List<String> getCountryAndLeague(Document html) {
    List<String> league = [];

    final equipo1 = html.querySelector(".row-2>.column-4")!.text;
    final equipo2 = html.querySelector(".row-3>.column-4")!.text;
    final equipo3 = html.querySelector(".row-4>.column-4")!.text;
    final equipo4 = html.querySelector(".row-5>.column-4")!.text;
    final equipo5 = html.querySelector(".row-6>.column-4")!.text;
    final equipo6 = html.querySelector(".row-7>.column-4")!.text;
    final equipo7 = html.querySelector(".row-8>.column-4")!.text;
    final equipo8 = html.querySelector(".row-9>.column-4")!.text;
    final equipo9 = html.querySelector(".row-10>.column-4")!.text;
    final equipo10 = html.querySelector(".row-11>.column-4")!.text;
    final equipo11 = html.querySelector(".row-12>.column-4")!.text;
    final equipo12 = html.querySelector(".row-13>.column-4")!.text;
    final equipo13 = html.querySelector(".row-14>.column-4")!.text;
    final equipo14 = html.querySelector(".row-15>.column-4")!.text;
    final equipo15 = html.querySelector(".row-16>.column-4")!.text;
    final equipo16 = html.querySelector(".row-17>.column-4")!.text;
    final equipo17 = html.querySelector(".row-18>.column-4")!.text;
    final equipo18 = html.querySelector(".row-19>.column-4")!.text;
    final equipo19 = html.querySelector(".row-20>.column-4")!.text;
    final equipo20 = html.querySelector(".row-21>.column-4")!.text;

    league.add(equipo1);
    league.add(equipo2);
    league.add(equipo3);
    league.add(equipo4);
    league.add(equipo5);
    league.add(equipo6);
    league.add(equipo7);
    league.add(equipo8);
    league.add(equipo9);
    league.add(equipo10);
    league.add(equipo11);
    league.add(equipo12);
    league.add(equipo13);
    league.add(equipo14);
    league.add(equipo15);
    league.add(equipo16);
    league.add(equipo17);
    league.add(equipo18);
    league.add(equipo19);
    league.add(equipo20);

    return league;
  }

  List<String> getTeamNames(Document html) {
    List<String> nombres = [];

    final equipo1 = html.querySelector(".row-2>.column-2")!.text;
    final equipo2 = html.querySelector(".row-3>.column-2")!.text;
    final equipo3 = html.querySelector(".row-4>.column-2")!.text;
    final equipo4 = html.querySelector(".row-5>.column-2")!.text;
    final equipo5 = html.querySelector(".row-6>.column-2")!.text;
    final equipo6 = html.querySelector(".row-7>.column-2")!.text;
    final equipo7 = html.querySelector(".row-8>.column-2")!.text;
    final equipo8 = html.querySelector(".row-9>.column-2")!.text;
    final equipo9 = html.querySelector(".row-10>.column-2")!.text;
    final equipo10 = html.querySelector(".row-11>.column-2")!.text;
    final equipo11 = html.querySelector(".row-12>.column-2")!.text;
    final equipo12 = html.querySelector(".row-13>.column-2")!.text;
    final equipo13 = html.querySelector(".row-14>.column-2")!.text;
    final equipo14 = html.querySelector(".row-15>.column-2")!.text;
    final equipo15 = html.querySelector(".row-16>.column-2")!.text;
    final equipo16 = html.querySelector(".row-17>.column-2")!.text;
    final equipo17 = html.querySelector(".row-18>.column-2")!.text;
    final equipo18 = html.querySelector(".row-19>.column-2")!.text;
    final equipo19 = html.querySelector(".row-20>.column-2")!.text;
    final equipo20 = html.querySelector(".row-21>.column-2")!.text;

    nombres.add(equipo1);
    nombres.add(equipo2);
    nombres.add(equipo3);
    nombres.add(equipo4);
    nombres.add(equipo5);
    nombres.add(equipo6);
    nombres.add(equipo7);
    nombres.add(equipo8);
    nombres.add(equipo9);
    nombres.add(equipo10);
    nombres.add(equipo11);
    nombres.add(equipo12);
    nombres.add(equipo13);
    nombres.add(equipo14);
    nombres.add(equipo15);
    nombres.add(equipo16);
    nombres.add(equipo17);
    nombres.add(equipo18);
    nombres.add(equipo19);
    nombres.add(equipo20);

    return nombres;
  }

  List<String> getConfederacion(Document html) {
    List<String> confederacion = [];

    final equipo1 = html.querySelector(".row-2>.column-7")!.text;
    final equipo2 = html.querySelector(".row-3>.column-7")!.text;
    final equipo3 = html.querySelector(".row-4>.column-7")!.text;
    final equipo4 = html.querySelector(".row-5>.column-7")!.text;
    final equipo5 = html.querySelector(".row-6>.column-7")!.text;
    final equipo6 = html.querySelector(".row-7>.column-7")!.text;
    final equipo7 = html.querySelector(".row-8>.column-7")!.text;
    final equipo8 = html.querySelector(".row-9>.column-7")!.text;
    final equipo9 = html.querySelector(".row-10>.column-7")!.text;
    final equipo10 = html.querySelector(".row-11>.column-7")!.text;
    final equipo11 = html.querySelector(".row-12>.column-7")!.text;
    final equipo12 = html.querySelector(".row-13>.column-7")!.text;
    final equipo13 = html.querySelector(".row-14>.column-7")!.text;
    final equipo14 = html.querySelector(".row-15>.column-7")!.text;
    final equipo15 = html.querySelector(".row-16>.column-7")!.text;
    final equipo16 = html.querySelector(".row-17>.column-7")!.text;
    final equipo17 = html.querySelector(".row-18>.column-7")!.text;
    final equipo18 = html.querySelector(".row-19>.column-7")!.text;
    final equipo19 = html.querySelector(".row-20>.column-7")!.text;
    final equipo20 = html.querySelector(".row-21>.column-7")!.text;

    confederacion.add(equipo1);
    confederacion.add(equipo2);
    confederacion.add(equipo3);
    confederacion.add(equipo4);
    confederacion.add(equipo5);
    confederacion.add(equipo6);
    confederacion.add(equipo7);
    confederacion.add(equipo8);
    confederacion.add(equipo9);
    confederacion.add(equipo10);
    confederacion.add(equipo11);
    confederacion.add(equipo12);
    confederacion.add(equipo13);
    confederacion.add(equipo14);
    confederacion.add(equipo15);
    confederacion.add(equipo16);
    confederacion.add(equipo17);
    confederacion.add(equipo18);
    confederacion.add(equipo19);
    confederacion.add(equipo20);

    return confederacion;
  }

  List<String> getPoints(Document html) {
    List<String> points = [];

    final equipo1 = html.querySelector(".row-2>.column-10")!.text;
    final equipo2 = html.querySelector(".row-3>.column-10")!.text;
    final equipo3 = html.querySelector(".row-4>.column-10")!.text;
    final equipo4 = html.querySelector(".row-5>.column-10")!.text;
    final equipo5 = html.querySelector(".row-6>.column-10")!.text;
    final equipo6 = html.querySelector(".row-7>.column-10")!.text;
    final equipo7 = html.querySelector(".row-8>.column-10")!.text;
    final equipo8 = html.querySelector(".row-9>.column-10")!.text;
    final equipo9 = html.querySelector(".row-10>.column-10")!.text;
    final equipo10 = html.querySelector(".row-11>.column-10")!.text;
    final equipo11 = html.querySelector(".row-12>.column-10")!.text;
    final equipo12 = html.querySelector(".row-13>.column-10")!.text;
    final equipo13 = html.querySelector(".row-14>.column-10")!.text;
    final equipo14 = html.querySelector(".row-15>.column-10")!.text;
    final equipo15 = html.querySelector(".row-16>.column-10")!.text;
    final equipo16 = html.querySelector(".row-17>.column-10")!.text;
    final equipo17 = html.querySelector(".row-18>.column-10")!.text;
    final equipo18 = html.querySelector(".row-19>.column-10")!.text;
    final equipo19 = html.querySelector(".row-20>.column-10")!.text;
    final equipo20 = html.querySelector(".row-21>.column-10")!.text;

    points.add(equipo1);
    points.add(equipo2);
    points.add(equipo3);
    points.add(equipo4);
    points.add(equipo5);
    points.add(equipo6);
    points.add(equipo7);
    points.add(equipo8);
    points.add(equipo9);
    points.add(equipo10);
    points.add(equipo11);
    points.add(equipo12);
    points.add(equipo13);
    points.add(equipo14);
    points.add(equipo15);
    points.add(equipo16);
    points.add(equipo17);
    points.add(equipo18);
    points.add(equipo19);
    points.add(equipo20);

    return points;
  }

  List<String> getChange(Document html) {
    List<String> change = [];

    final equipo1 = html.querySelector(".row-2>.column-11")!.text;
    final equipo2 = html.querySelector(".row-3>.column-11")!.text;
    final equipo3 = html.querySelector(".row-4>.column-11")!.text;
    final equipo4 = html.querySelector(".row-5>.column-11")!.text;
    final equipo5 = html.querySelector(".row-6>.column-11")!.text;
    final equipo6 = html.querySelector(".row-7>.column-11")!.text;
    final equipo7 = html.querySelector(".row-8>.column-11")!.text;
    final equipo8 = html.querySelector(".row-9>.column-11")!.text;
    final equipo9 = html.querySelector(".row-10>.column-11")!.text;
    final equipo10 = html.querySelector(".row-11>.column-11")!.text;
    final equipo11 = html.querySelector(".row-12>.column-11")!.text;
    final equipo12 = html.querySelector(".row-13>.column-11")!.text;
    final equipo13 = html.querySelector(".row-14>.column-11")!.text;
    final equipo14 = html.querySelector(".row-15>.column-11")!.text;
    final equipo15 = html.querySelector(".row-16>.column-11")!.text;
    final equipo16 = html.querySelector(".row-17>.column-11")!.text;
    final equipo17 = html.querySelector(".row-18>.column-11")!.text;
    final equipo18 = html.querySelector(".row-19>.column-11")!.text;
    final equipo19 = html.querySelector(".row-20>.column-11")!.text;
    final equipo20 = html.querySelector(".row-21>.column-11")!.text;

    change.add(equipo1);
    change.add(equipo2);
    change.add(equipo3);
    change.add(equipo4);
    change.add(equipo5);
    change.add(equipo6);
    change.add(equipo7);
    change.add(equipo8);
    change.add(equipo9);
    change.add(equipo10);
    change.add(equipo11);
    change.add(equipo12);
    change.add(equipo13);
    change.add(equipo14);
    change.add(equipo15);
    change.add(equipo16);
    change.add(equipo17);
    change.add(equipo18);
    change.add(equipo19);
    change.add(equipo20);

    return change;
  }

  Map? links = {
    "Manchester City FC":
        "https://www.espn.com/soccer/club/_/id/382/manchester-city",
    "FC Bayern München":
        "https://www.espn.com/soccer/club/_/id/132/bayern-munich",
    "FC Barcelona": "https://www.espn.com/soccer/club/_/id/83/barcelona",
    "Liverpool FC": "https://www.espn.com/soccer/club/_/id/364/liverpool",
    "Real Madrid CF": "https://www.espn.com/soccer/club/_/id/86/real-madrid",
    "Chelsea FC": "https://www.espn.com/soccer/club/_/id/363/chelsea",
    "Paris Saint-Germain": "https://www.espn.com/soccer/team/_/id/160/",
    "Juventus": "https://www.espn.com/soccer/club/_/id/111/juventus",
    "Club Atlético de Madrid":
        "https://www.espn.com/soccer/club/_/id/1068/atletico-madrid",
    "Manchester United FC":
        "https://www.espn.com/soccer/club/_/id/360/manchester-united",
    "Tottenham Hotspur FC":
        "https://www.espn.com/soccer/club/_/id/367/tottenham-hotspur",
    "Borussia Dortmund":
        "https://www.espn.com/soccer/club/_/id/124/borussia-dortmund",
    "Sevilla FC": "https://www.espn.com/soccer/club/_/id/243/sevilla-fc",
    "FC Porto": "https://www.espn.com/soccer/team/_/id/437/fc-porto",
    "RB Leipzig": "https://www.espn.com/soccer/club/_/id/11420/rb-leipzig",
    "AS Roma": "https://www.espn.com/soccer/club/_/id/104/as-roma",
    "Arsenal FC": "https://www.espn.com/soccer/club/_/id/359/arsenal",
    "SSC Napoli": "https://www.espn.com/soccer/club/_/id/114/napoli",
    "Palmeiras": "https://www.espn.com/soccer/team/_/id/2029/palmeiras",
    "Atalanta BC": "https://www.espn.com/soccer/club/_/id/105/atalanta",
    "UANL Tigres": "",
    "River Plate": "",
    "América": "",
    "Flamengo": "",
    "AFC Ajax": "",
    "Grêmio": "",
    "FC Internazionale Milano": "",
    "Olympique Lyonnais": "",
    "AC Milan": "",
    "SS Lazio": "",
    "Real Sociedad de Fútbol": "",
    "FC Zenit": "",
    "Villarreal CF": "",
    "Ulsan Hyundai": "",
    "FC Shakhtar Donetsk": "",
    "SL Benfica": "",
    "Boca Juniors": "",
    "Sporting Clube de Portugal": "",
    "Eintracht Frankfurt": "",
    "LOSC Lille": "",
    "FC Lokomotiv Moskva": "",
    "Olympique de Marseille": "",
    "Leicester City FC": "",
    "Bayer 04 Leverkusen": "",
    "Monterrey": "",
    "	Club Brugge": "",
    "	Rennes": "",
    "VfL Borussia Mönchengladbach": "",
    "SC Braga": "",
    "PSV Eindhoven": "",
  };

  Map? logos = {
    "Manchester City FC":
        "https://a.espncdn.com/i/teamlogos/soccer/500/382.png",
    "FC Bayern München": "https://a.espncdn.com/i/teamlogos/soccer/500/132.png",
    "FC Barcelona": "https://a.espncdn.com/i/teamlogos/soccer/500/83.png",
    "Liverpool FC": "https://a.espncdn.com/i/teamlogos/soccer/500/364.png",
    "Real Madrid CF": "https://a.espncdn.com/i/teamlogos/soccer/500/86.png",
    "Chelsea FC": "https://a.espncdn.com/i/teamlogos/soccer/500/363.png",
    "Paris Saint-Germain":
        "https://a.espncdn.com/i/teamlogos/soccer/500/160.png",
    "Juventus": "https://a.espncdn.com/i/teamlogos/soccer/500/111.png",
    "Club Atlético de Madrid":
        "https://a.espncdn.com/i/teamlogos/soccer/500/1068.png",
    "Manchester United FC":
        "https://a.espncdn.com/i/teamlogos/soccer/500/360.png",
    "Tottenham Hotspur FC":
        "https://a.espncdn.com/i/teamlogos/soccer/500/367.png",
    "Borussia Dortmund": "https://a.espncdn.com/i/teamlogos/soccer/500/124.png",
    "Sevilla FC": "https://a.espncdn.com/i/teamlogos/soccer/500/243.png",
    "FC Porto": "https://a.espncdn.com/i/teamlogos/soccer/500/437.png",
    "RB Leipzig": "https://a.espncdn.com/i/teamlogos/soccer/500/11420.png",
    "AS Roma": "https://a.espncdn.com/i/teamlogos/soccer/500/104.png",
    "Arsenal FC": "https://a.espncdn.com/i/teamlogos/soccer/500/359.png",
    "SSC Napoli": "https://a.espncdn.com/i/teamlogos/soccer/500/114.png",
    "Palmeiras": "https://a.espncdn.com/i/teamlogos/soccer/500/2029.png",
    "Atalanta BC": "https://a.espncdn.com/i/teamlogos/soccer/500/105.png",
    "UANL Tigres": "",
    "River Plate": "",
    "América": "",
    "Flamengo": "",
    "AFC Ajax": "",
    "Grêmio": "",
    "FC Internazionale Milano": "",
    "Olympique Lyonnais": "",
    "AC Milan": "",
    "SS Lazio": "",
    "Real Sociedad de Fútbol": "",
    "FC Zenit": "",
    "Villarreal CF": "",
    "Ulsan Hyundai": "",
    "FC Shakhtar Donetsk": "",
    "SL Benfica": "",
    "Boca Juniors": "",
    "Sporting Clube de Portugal": "",
    "Eintracht Frankfurt": "",
    "LOSC Lille": "",
    "FC Lokomotiv Moskva": "",
    "Olympique de Marseille": "",
    "Leicester City FC": "",
    "Bayer 04 Leverkusen": "",
    "Monterrey": "",
    "	Club Brugge": "",
    "	Rennes": "",
    "VfL Borussia Mönchengladbach": "",
    "SC Braga": "",
    "PSV Eindhoven": "",
  };
}

class EquipoStandings {
  String teamName;
  String liga;
  String pais;
  String confederacion;
  String points;
  String change;
  String logo;
  String link;
  EquipoStandings(this.teamName, this.liga, this.pais, this.confederacion,
      this.points, this.change, this.logo, this.link);
}

class Partido {
  String logoAway;
  String logoHome;
  String nameAway;
  String nameHome;
  String hora;
  String fecha;
  String goalsAway;
  String goalsHome;

  Partido(this.logoAway, this.logoHome, this.nameAway, this.nameHome, this.hora,
      this.fecha, this.goalsAway, this.goalsHome);
}
