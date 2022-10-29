import '../entities/user.dart';

class ListUsers(){
  List<User> users = [
  User('Diguinho','FEUP','LEGI',[user2,user7,user5,user10,user13,user11,user12,user15]),
  User('Tónel','FEUP','LEEC',[user1,user8,user9,user4,user7,user5,user13,user11]),
  User('Falha','FEUP','LEEI',[user15,user11,user13,user10,user1]),
  User('João','FEP','Economia',[user8,user7,user12,user6,user10]),
  User('Fernando','ICBAS','Medicina',[user3]),
  User('José','ISEP','LEEC',[user13,user1,user4,user2,user14]),
  User('Kika','FMUP','Medicina',[user4,user1,user11]),
  User('Laura','FMUP','Medicina',[user7,user11,user12,user1,user2]),
  User('Carolina','ESEP','Enfermagem',[user2,user13,user4,user5]),
  User('Carla','FCUP','Biologia',[user11,user12]),
  User('Tânia','FCUP','Matemática',[user1,user4,user7]),
  User('Vanessa','FCUP','Biologia',[user15,user4,user5,user1]),
  User('Luis','FEP','Gestão',[user15,user7,user8,user4]),
  User('Marco','FEP','Economia',[user7,user9,user5]),
  User('Matilde','ISCAP','Gestão',[user12,user14,user12,user3,user2]),
  ];

  List<User> getUsers(){
    return users;
}
  void addUser(User user){
    users.add(user);
}
}

