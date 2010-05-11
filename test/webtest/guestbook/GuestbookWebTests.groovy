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
}
