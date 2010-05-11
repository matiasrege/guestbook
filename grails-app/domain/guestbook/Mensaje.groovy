package guestbook

class Mensaje {
    String nombreUsuario
    String texto

    static constraints = {
        nombreUsuario(size:2..20, blank:false)
        texto(size:8..200, blank:false)
    }
}
