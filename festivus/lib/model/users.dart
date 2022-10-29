import 'package:festivus/entities/user.dart';

class ListUsers{

  static List<User> users = [
  User('Diguinho','FEUP','LEGI'),
  User('Tónel','FEUP','LEEC'),
  User('Falha','FEUP','LEEI'),
  User('João','FEP','Economia'),
  User('Fernando','ICBAS','Medicina'),
  User('José','ISEP','LEEC'),
  User('Kika','FMUP','Medicina'),
  User('Laura','FMUP','Medicina'),
  User('Carolina','ESEP','Enfermagem'),
  User('Carla','FCUP','Biologia'),
  User('Tânia','FCUP','Matemática'),
  User('Vanessa','FCUP','Biologia'),
  User('Luis','FEP','Gestão'),
  User('Marco','FEP','Economia'),
  User('Matilde','ISCAP','Gestão'),
  ];

  static List<User> getUsers(){
    return users;
  }
  static void addUser(User user){
    users.add(user);
  }
}

