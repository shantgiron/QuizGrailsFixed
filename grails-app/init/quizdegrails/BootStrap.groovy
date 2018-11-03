package quizdegrails

class BootStrap {

    def springSecurityService

    def init = { servletContext ->

        def userRole = new Role(authority: 'ROLE_ADMIN').save()
        def adminUser = new User(username: 'admin', password: 'admin').save()

        UserRole.create adminUser, userRole

        UserRole.withSession {
            it.flush()
            it.clear()
        }
    }
    def destroy = {
    }
}
