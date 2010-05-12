package guestbook

class GuestbookWebTests extends grails.util.WebTest {
    void testShowWelcomeMessage() {
        invoke '/'
        verifyText 'Bienvenido'
    }

    void testShowWelcomeMessageInPortuguese() {
        invoke '/?lang=pt'
        verifyText 'boas-vindas'
    }

    void testUserCanLeaveHisNameAndAMessage() {
        invoke '/'
        setInputField forLabel:"Nombre", value:"Jose"
        setInputField forLabel:"Mensaje", value:"Este es un mensaje de prueba"
        clickButton label:"Enviar"
        verifyText "Este es un mensaje de prueba"
        verifyText "Jose"
    }
}
