import '../model/date_model.dart';
import '../model/event_type_model.dart';
import '../model/events_model.dart';

List<dynamic> getDates(){

  List<dynamic> dates = [];
  DateModel dateModel = new DateModel();


  //1
  dateModel.date = "07";
  dateModel.weekDay = "Thu";
  dates.add(dateModel);

  dateModel = new DateModel();

  //1
  dateModel.date = "08";
  dateModel.weekDay = "Fri";
  dates.add(dateModel);

  dateModel = new DateModel();


  //1
  dateModel.date = "09";
  dateModel.weekDay = "Sat";
  dates.add(dateModel);



  return dates;

}

List<dynamic> getEventTypes(){

  List<dynamic> events = [];
  EventTypeModel eventModel = new EventTypeModel();

  //1
  eventModel.imgAssetPath = "assets/concert.png";
  eventModel.eventType = "Cultural";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  //1
  eventModel.imgAssetPath = "assets/sports.png";
  eventModel.eventType = "Sports";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  //1
  eventModel.imgAssetPath = "assets/education.png";
  eventModel.eventType = "Technical";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  return events;
}

List<dynamic> getEvents(){

  List<dynamic> events = [];
  EventsModel eventsModel = new EventsModel();

  //1
  eventsModel.imgeAssetPath = "assets/tileimg.png";
  eventsModel.date = "07 April, 2022";
  eventsModel.desc = "Sporting";
  eventsModel.address = "ITM , Gorakhpur ";
  events.add(eventsModel);

  eventsModel = new EventsModel();

  //2
  eventsModel.imgeAssetPath = "assets/second.png";
  eventsModel.date = "08 April, 2022";
  eventsModel.desc = "Live The art";
  eventsModel.address = "ITM , GIDA";
  events.add(eventsModel);

  eventsModel = new EventsModel();

  //3
  eventsModel.imgeAssetPath = "assets/music_event.png";
  eventsModel.date = "09 April, 2022";
  eventsModel.address = "ITM , GIDA";
  eventsModel.desc = "EDM Night";
  events.add(eventsModel);

  eventsModel = new EventsModel();


  return events;


}