package guestbook

class GuestbookWebTests extends grails.util.WebTest {
    void testDebeSaludarEnEncabezado() {
        invoke '/'
        verifyText 'Bienvenido'
    }

    void testDebeSaludarEnPortugues() {
        invoke '/?lang=pt'
        verifyText 'boas-vindas'
    }

    void testDejarNombreYMensaje() {
        invoke '/'
        setInputField forLabel:"Nombre", value:"Jose"
        setInputField forLabel:"Mensaje", value:"Este es un mensaje de prueba"
        clickButton label:"Enviar"
        verifyText "Este es un mensaje de prueba"
        verifyText "Jose"
    }
}
