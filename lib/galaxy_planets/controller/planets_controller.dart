import 'package:animator_pr6/galaxy_planets/model/planets_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PlanetsController extends GetxController {
  List<PlanetsModel> planetsList = [
    PlanetsModel(
        name: "MERCURY",
        img: "assets/images/1mer.png",
        gravity: "3.7",
        sunDistance: '57',
        earthDistance: "35",
        data:
            "Mercury is the smallest planet in the solar system and is located closest to the sun. It is about one-third the size of Earth and has a very thin atmosphere composed mostly of helium and hydrogen. Mercury has a heavily cratered surface and no moons.Mercury’s proximity to the sun makes it difficult to observe from Earth because it is always close to the sun in the sky. Mercury’s orbit around the sun is very elliptical which causes its distance from the sun to vary widely."),
    PlanetsModel(
        name: "EARTH",
        img: "assets/images/2ear.png",
        gravity: "9.8",
        sunDistance: "94",
        earthDistance: "0",
        data:
            "Earth is the third planet from the sun and the only known planet to support life. It is the fifth largest planet in the solar system by diameter. Earth's atmosphere is composed of 78% nitrogen, 21% oxygen, and trace amounts of other gases including argon and carbon dioxide. The atmosphere protects life on Earth by absorbing harmful ultraviolet radiation from the sun and regulating temperature.Earth has a magnetic field that protects it from solar winds and cosmic rays. "),
    PlanetsModel(
        name: "MARS",
        img: "assets/images/3mar.png",
        gravity: "3.71",
        sunDistance: "228",
        earthDistance: "142",
        data:
            "Mars is the fourth planet from the sun in our solar system. It is about half the size of Earth and is known as the Red Planet because of the iron oxide chemicals in its soil that look like rust. The possibility of life on Mars has aroused the interest of scientists for many years. A major reason for this interest is due to the similarity and proximity of the planet to Earth1. Mars is a terrestrial planet that is small and rocky. It has a thin atmosphere and its volcanoes are dead."),
    PlanetsModel(
        name: "NEPTUNE",
        img: "assets/images/4nep.png",
        gravity: "11.7",
        sunDistance: '4500',
        earthDistance: "2800",
        data:
            "Neptune is the eighth planet from the sun and the farthest known planet in the Solar System.It is the fourth-largest planet in the Solar System by diameter,the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, slightly more massive than its near-twin Uranus.Neptune is dark, cold, and very windy. It’s more than 30 times as far from the sun as Earth is.It’s made of a thick fog of water,ammonia,and methane over an Earth-sized solid center."),
    PlanetsModel(
        name: "MOON",
        img: "assets/images/5moo.png",
        gravity: "1.7",
        sunDistance: "91.3",
        earthDistance: "0.38",
        data:
            " It is about one-quarter the size of Earth and is the largest natural satellite relative to its host planet. The moon is about 238,855 miles (384,400 kilometers) from Earth and is about 1/6th the size of Earth. The moon’s gravity is only about 1/6th as strong as Earth’s gravity, so if you weigh 180 pounds on Earth, you would only weigh 30 pounds on the moon.The moon has no atmosphere, no weather and no oceans. It has a very thin layer of gases called an exosphere."),
  ];
}
