import Text "mo:base/Text";

actor {
  var obtenerNombre: Text = "";

  public func setName(nombre: Text) : async () {
    obtenerNombre := nombre;
  };

  public query func getName() : async Text {
    return obtenerNombre;
  };
};
