import HashMap "mo:base/HashMap";
import Text "mo:base/Text";

actor {
  type Student = {
    id: Text;
    Firstname: Text;
    LastName: Text;
    age: Nat;
    activo: Bool;
  };

  var students = HashMap.HashMap<Text, Student>(5, Text.equal, Text.hash);

  let Miguel: Student = {
    id = "1";
    Firstname = "Miguel";
    LastName = "Angel";
    age = 21;
    activo = true;
  };

  students.put("Miguel", Miguel);

  let Jeanne: Student = {
    id = "2";
    Firstname = "Jeanne";
    LastName = "Doe";
    age = 22;
    activo = true;
  };

  students.put("Jeanne", Jeanne);

  public func addStudent(id: Text, Firstname: Text, LastName: Text, age: Nat, activo: Bool) : async () {
    let newStudent: Student = {
      id = id;
      Firstname = Firstname;
      LastName = LastName;
      age = age;
      activo = activo;
    };
    students.put(Firstname, newStudent);
  };
  public query func getStudent(name: Text): async ?Student {
    return students.get(name);
  };

}