package guestbook

class MensajeController {
    def delete = {
        def m = Mensaje.load(param.id)
        m.delete()
        redirect action:"index"
    }
    def create = {
        def m = new Mensaje(nombreUsuario:params.nombre, texto:params.mensaje)
        m.save()
        redirect action:"index"
    }
    def index = { 
        def mensajes = Mensaje.list()
        [mensajes:mensajes]    
    }
}
