import 'package:festivus/entities/user.dart';

class Party {
   String name;
   String place;
   String startTime;
   String endTime;
   String startDay;
   String description;
   int price;
   List<User> going;
   List<User> notGoing;


  Party(this.name, this.place, this.startTime, this.endTime, this.startDay, this.description, this.price, this.going, this.notGoing);
}