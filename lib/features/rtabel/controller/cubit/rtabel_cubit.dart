import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'rtabel_state.dart';

class RtabelCubit extends Cubit<RtabelState> {
  RtabelCubit() : super(RtabelInitial()){
    loadcheckboxvalues();
  }

  List<String> words =['فجر','ظهر','عصر','مغرب','عشاء','الشروق','الضحى','الصباح','المساء أذكار ','الإستغفار',
 'أذكار عامه','ورد تلاوة','ورد تدبر','صدقه','بر الوالدين','صله الرحم'];
  List<bool>? cb_values;
   
  savecheckboxvalue(int index,newvalue)async{
    SharedPreferences cb_state = await SharedPreferences.getInstance();
    cb_state.setBool('cb$index', newvalue);

  }

  loadcheckboxvalues()async{
    SharedPreferences cb_state = await SharedPreferences.getInstance();
    cb_values = List<bool>.generate(16*30, (index) { return cb_state.getBool('cb$index')??false;});
    emit(Rtabelloadvalues());

  }
 
  

  changecbvalue(newvalue,index) {
    cb_values![index] = newvalue ;
    savecheckboxvalue(index, newvalue);
    emit(Rtabelcangevalue());
   
  }
  f(){
     emit(Rtabelcangevalue()); 
  }
}
