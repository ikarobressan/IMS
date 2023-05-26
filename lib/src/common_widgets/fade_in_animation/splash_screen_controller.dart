import 'package:cidade_segura2/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;
  //Variavel usada para armazenar valores de verdadeiro ou falso do pacote GetX

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(seconds: 3));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(const WelcomeScreen());
    //Função usada para navegar para uma nova tela (rota) e remover todas as rotas anteriores
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}
