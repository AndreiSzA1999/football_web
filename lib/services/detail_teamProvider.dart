import 'package:html/dom.dart';

import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class DetailTeamProvider {
  Future<DetailTeam> getInfo(String link) async {
    final response = await http.get(Uri.parse(link));

    final body = response.body;

    final html = parse(body);

    return DetailTeam(getClasificacion(html));
  }

  List<TablaClasificaciom> getClasificacion(Document html) {
    List<TablaClasificaciom> clasificacion = [];

    Element? tabla = html.querySelector("tbody");

    tabla!.querySelectorAll("tr").forEach((element) {
      int index = 0;
      String? nombre = "";
      String? partidosJugados = "";
      String? partidosGanados = "";
      String? partidosEmpatados = "";
      String? puntos = "";
      String? golaverage = "";
      String? partidosPerdidos = "";

      element.querySelectorAll("td").forEach((element) {
        switch (index) {
          case 0:
            nombre = element.text;
            index++;
            break;

          case 1:
            partidosJugados = element.text;
            index++;
            break;
          case 2:
            partidosGanados = element.text;
            index++;
            break;
          case 3:
            partidosEmpatados = element.text;
            index++;
            break;
          case 4:
            partidosPerdidos = element.text;
            index++;
            break;
          case 5:
            golaverage = element.text;
            index++;
            break;
          case 6:
            puntos = element.text;
            index++;

            break;
        }
      });
      clasificacion.add(TablaClasificaciom(
          nombre!,
          partidosJugados!,
          partidosGanados!,
          partidosPerdidos!,
          partidosEmpatados!,
          puntos!,
          golaverage!));
    });

    return clasificacion;
  }
}

class DetailTeam {
  //List<Partido> partidos;
  List<TablaClasificaciom> clasificacion;

  DetailTeam(this.clasificacion);
}

class TablaClasificaciom {
  String nombre;
  String partidosJugados;
  String partidosGanados;
  String partidosPerdidos;
  String partidosEmpatados;
  String golaverage;
  String puntos;

  TablaClasificaciom(
      this.nombre,
      this.partidosJugados,
      this.partidosGanados,
      this.partidosPerdidos,
      this.partidosEmpatados,
      this.puntos,
      this.golaverage);
}

/*class Partido {
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
}*/
