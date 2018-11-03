import quizdegrails.UserPasswordEncoderListener
import quizdegrails.UsuarioService

// Place your Spring DSL code here
beans = {
    userPasswordEncoderListener(UserPasswordEncoderListener)
    userDetailsService(UsuarioService)
}
