
class PrayerModel {
  dynamic fajr;
  dynamic shurooq;
  dynamic dhuhr;
  dynamic asr;
  dynamic maghrib;
  dynamic isha;
  dynamic date;
  PrayerModel.fromjson({required Map<String,dynamic> data}) {
    fajr = data['Fajr'];
    shurooq = data['Sunrise'];
    dhuhr = data['Dhuhr'];
    asr = data["Asr"];
    maghrib = data["Maghrib"];
    isha = data["Isha"];
   
  }
  
  PrayerModel.extraData({required Map<String,dynamic> extra}){
   date=extra['readable'];
  
  }
    
 
  
  

}
