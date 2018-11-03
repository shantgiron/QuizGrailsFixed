package quizdegrails

import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.security.core.GrantedAuthority

class Usuario extends GrailsUser {

    String nombre;
    String apellido;
    String cedula;
    String email;
    Date fechaNacimiento;

    Usuario(String username, String password, boolean enabled,
    boolean accountExpired, boolean accountLocked,
    boolean passwordExpired, Set<Role> authorities, String nombre, String apellido, String cedula, String email, Date fechaNacimiento) {
        super(username, password, enabled, accountExpired,
                accountLocked, passwordExpired, authorities)

        this.nombre = nombre
        this.apellido = apellido
        this.cedula = cedula
        this.email = email
        this.fechaNacimiento = fechaNacimiento
    }
    static constraints = {
    }
}
