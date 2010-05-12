package guestbook

class Message {
    String user
    String text

    static constraints = {
        user(size:2..20, blank:false)
        text(size:8..200, blank:false)
    }
}
