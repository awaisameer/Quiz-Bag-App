// // // Base class for items in the store
// // class Item {
// //   String name;
// //   double price;

// //   Item(this.name, this.price);

// //   void display() {
// //     print("Name: $name, Price: $price");
// //   }
// // }

// // // Derived class for Chai (Tea)
// // class Chai extends Item {
// //   String type;

// //   Chai(String name, double price, this.type) : super(name, price);

// //   void display() {
// //     super.display();
// //     print("Type: $type");
// //   }
// // }

// // // Derived class for Coffee
// // class Coffee extends Item {
// //   String strength;

// //   Coffee(String name, double price, this.strength) : super(name, price);

// //   void display() {
// //     super.display();
// //     print("Strength: $strength");
// //   }
// // }

// // // Derived class for Snacks
// // class Snacks extends Item {
// //   int quantity;

// //   Snacks(String name, double price, this.quantity) : super(name, price);

// //   void display() {
// //     super.display();
// //     print("Quantity: $quantity");
// //   }
// // }

// // void main() {
// //   // Creating objects for chai, coffee, and snacks
// //   var chai = Chai("Kashmiri Chai", 50, "Kahwa");
// //   var coffee = Coffee("Espresso", 80, "Strong");
// //   var snacks = Snacks("Samosa", 20, 5);

// //   // Displaying items
// //   chai.display();
// //   coffee.display();
// //   snacks.display();
// // }

// // ignore_for_file: avoid_print, empty_constructor_bodies, override_on_non_overriding_member

// void main() {
//   // print(Newbike().batterylev);
//   // print(Newbike().noOfTyres);
//   // Newbike n1Bike = Newbike();
//   // n1Bike.move();
//   // n1Bike.faster();
//   // MyA mycar = MyA(s: 'a raha hu');
//   // print(mycar.destination);
//   // mycar.destination;
//   // mycar.run();
//   OurHouse myHouse=OurHouse('Awais');
//   print(myHouse.colorOfHouse);
//   print(myHouse.ownerOfHouse);
//   myHouse.roomNumberx;
//   myHouse.runningHouse();
// }

// class Bike {
//   int noOfTyres = 77;
//   void move() {
//     print('moving fast');
//   }
// }

// class Newbike extends Bike {
//   int batterylev = 99;
//   void faster() {
//     print('ready to fight?');
//   }
// }
// class House{
//   int roomNumberx=110;
//   void runningHouse(){
//     print('$roomNumberx');
//   }
// }

// class OurHouse extends House {
//   String colorOfHouse='Orange';
//   late String ownerOfHouse;
//  OurHouse (String owner){
//     ownerOfHouse=owner;
//  }
// @override
// void  runningHouse() {
//   print('Color of the house is $ownerOfHouse');
//   print(ownerOfHouse);
// }
// }
// // void main() {
// //   House newHouse = House(rooms: 22, color: 'Red', kitchens: 'Two');
// //   print(newHouse.noOfRooms);
// //   newHouse.eleigible('letsGo');
// // }

// // class House {
// //   late int noOfRooms;
// //   late String colorofHouse;
// //   late String noOfKitchen;
// //   House({required int rooms, required String color, required String kitchens}) {
// //     noOfRooms = rooms;
// //     noOfKitchen = kitchens;
// //     colorofHouse = color;
// //   }

// //   void eleigible(String letsGo) {
// //     print(letsGo);
// //   }
// // // }
// // // void main() {
// // //   Room classicRoom = Room(rooms: 223, color: "Black", beds: 2);
// // //   Room wellFurnishedRooms = Room(rooms: 4, color: 'RED', beds: 1);
// // //   print('For Well Furnished Room:');
// // //   print(classicRoom.colorofRoom);
// // //   print(classicRoom.noOfBed);
// // //   print(classicRoom.noOfRooms);
// // //   if (classicRoom.noOfBed == 2) {
// // //     classicRoom.highClass('Eligible');
// // //   } else {
// // //     print('No Eligible');
// // //   }
// // //   print('For Class Room:');
// // //   print(wellFurnishedRooms.colorofRoom);
// // //   print(wellFurnishedRooms.noOfBed);
// // //   print(wellFurnishedRooms.noOfRooms);

// // //   if (wellFurnishedRooms.noOfBed == 0) {
// // //     wellFurnishedRooms.highClass('Not eligible');
// // //   } else {
// // //     print('Eligible');
// // //   }
// // // }

// // // class Room {
// // //   late int noOfRooms;
// // //   late String colorofRoom;
// // //   late int noOfBed;
// // //   Room({required rooms, required color, required beds}) {
// // //     noOfRooms = rooms;
// // //     colorofRoom = color;
// // //     noOfBed = beds;
// // //   }
// // //   void highClass(String eligible) {
// // //     print(eligible);
// // //   }
// // // }
// // // void main() {
// // //   Bedsheet newsheet = Bedsheet(ncolor: 'Blue', nsize: 'Large');
// // //   print(newsheet.color);
// // //   print(newsheet.size);
// // //   newsheet.talk('Heavy Driver');
// // // }
// // // class Bedsheet {
// // //   late String color;
// // //   late String size;
// // //   Bedsheet({required ncolor, required, nsize}) {
// // //     color = ncolor;
// // //     size = nsize;
// // //   }
// // //   void talk(String talkless) {
// // //     print(talkless);
// // //   }
// // // }
// // // void main() {
// // //   Motorcycle bike = Motorcycle(ncolor: 'Green', nsize: 'Large');
// // //   print(bike.color);
// // //   print(bike.size);
// // //   bike.drive('Come fly with me');
// // // }

// // // class Motorcycle {
// // //   late String color;
// // //   late String size;
// // //   Motorcycle({required String ncolor, required String nsize}) {
// // //     color = ncolor;
// // //     size = nsize;
// // //   }
// // //   void drive(String letsDrive) {
// // //     print(letsDrive);
// // //   }
// // // }

// // ignore_for_file: avoid_print

// void main() {
//   NewCar myCar = NewCar('Orange');
//   Car oldCar = Car();
//   print(oldCar.colorOfcAR);
//   print(oldCar.numofcar);

//   print(myCar.color);
//   print(myCar.colorOfcAR);
//   myCar.ride();
// }

// class Car {
//   int numofcar = 11;
//   String colorOfcAR = 'blue';

//   void ride() {
//     print('Lets Ride');
//   }
// }

// class NewCar extends Car {
//   int nn = 100;
//   late String color;

//   NewCar(String cl) {
//     color = cl;
//   }
//   @override
//   void ride() {
//     print('print the size: $color');
//     print('Number $nn');
//   }
// }

// void main() {
// //     Bag newBagg=Bag(bag: 'Blue', numbers: 444);
// //     print(newBagg.newBag);
// //     print(newBagg.numOfBags);
// //   HandBag secondBag=HandBag();

// List<String> myList=[
//   '1,2,3,4,'
// ];
// print(myList[2]);

// }

// class Bag {
//   late String newBag;
//   late int numOfBags;
//   Bag({required String bag, required int numbers}) {
//     newBag = bag;
//     numOfBags = numbers;
//   }
// }

// class HandBag extends Bag {
//       var HandBag = newHandbag

// }

// ignore_for_file: prefer_final_fields, unused_field, camel_case_types

import 'package:flutter/foundation.dart';

class Qn {
  late String qus;
  late bool js;
  Qn({required String q, required bool a}) {
    qus = q;
    js = a;
  }
}

class qbain {
  int indexQ = 0;
  List<Qn> _qbb = [Qn(q: 'aaa', a: true), Qn(q: 'aqqq', a: false)];
}

void main() {
  Wquestions newQuestin = Wquestions(sl: 'Hru', jb: false);
  if (kDebugMode) {
    print(newQuestin.ans);
  }
  if (kDebugMode) {
    print(newQuestin.qi);
  }
}

class Wquestions {
  late String qi;
  late bool ans;
  Wquestions({required String sl, required bool jb}) {
    qi = sl;
    ans = jb;
  }
}
