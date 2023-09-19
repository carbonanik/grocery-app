import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/boarding_local.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';

class BoardingLocalImpl extends BoardingLocal {
  final boarding = "boarding";

  @override
  Future<bool> isPreviouslyBoarded() async {
    final box = await Hive.openBox(HiveBoxName.boardingBox);
    return await box.get(boarding) ?? false;
  }

  @override
  Future<bool> putPreviouslyBoarded(bool boarded) async {
    final box = await Hive.openBox(HiveBoxName.boardingBox);
    await box.put(boarding, boarded);
    return true;
  }
}
