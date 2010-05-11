package guestbook

class GuestbookWebTests extends grails.util.WebTest {
    void testDebeSaludarEnEncabezado() {
        invoke '/'
        verifyText 'Bienvenido'
    }
}
