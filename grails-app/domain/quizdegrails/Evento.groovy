package quizdegrails

class Evento {

    String nombre;
    String descripcion;
    Date fechaInicio;
    Date fechaFin;
    int edadPermitida;
    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        nombre unique: true;
    }


}
