
import 'package:fluuuuuuuuter/features/elec/model/elec_model.dart';

abstract class ParentRepo {
  Future<void> insert({required int? number});
  Future<List<ElecModel>> fetch();
  Future<void> delete({required int id});
}