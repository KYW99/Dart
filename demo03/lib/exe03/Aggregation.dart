class Resident {
  final String name;

  Resident(this.name);

  @override
  String toString() => name;
}

class Apartment {
  final String buildingName;
  final List<Resident> residents;

  Apartment(this.buildingName) : residents = [];

  void addResident(Resident resident) {
    residents.add(resident); // 거주자 추가
  }

  void removeResident(Resident resident) {
    residents.remove(resident); // 거주자 제거
  }

  void displayApartmentInfo() {
    print("Apartment Building: $buildingName");
    print("Residents:");
    if (residents.isEmpty) {
      print("No residents.");
    } else {
      for (var resident in residents) {
        print("- ${resident.name}");
      }
    }
  }
}

void main() {
  Resident resident1 = Resident('가');
  Resident resident2 = Resident('나');
  Resident resident3 = Resident('다');

  Apartment? apartment = Apartment('그린빌딩');

  apartment.addResident(resident1);
  apartment.addResident(resident2);
  apartment.addResident(resident3);

  apartment.displayApartmentInfo();

  apartment.removeResident(resident2);
  apartment.displayApartmentInfo();

  apartment = null;
  print("\nApartment object is set to null.");
  print(
      "Residents still exist: ${resident1.name}, ${resident2.name}, ${resident3.name}");
}
