import 'package:get/get.dart';
import 'package:getx_app/models/Counter_models.dart';

class CounterController extends GetxController {
  Countermodels countermodels = Countermodels(counter: 0.obs);

  void increment() {
    countermodels.counter++;
  }

  void decrement() {
    countermodels.counter--;
  }
}
