class Room {
  final int roomNumber;

  Room(this.roomNumber);

  int getRoomNumber() => roomNumber;
}

class House {
  final String address;
  final Room room;

  House(this.address, int roomNumber) : room = Room(roomNumber);

  void displayHouseInfo() {
    print('House Address : ${address}');
    print('Room Number : ${room.getRoomNumber()}');
  }
}

void main() {
  House? house = House('부산진구', 101);
  house.displayHouseInfo();

  house = null;

  print("House object is set to null.");
}
