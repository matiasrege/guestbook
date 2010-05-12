package guestbook

class MessageController {
    def delete = {
        def m = Message.load(param.id)
        m.delete()
        redirect action:"index"
    }
    def create = {
        def m = new Message(user:params.user, text:params.message)
        m.save()
        redirect action:"index"
    }
    def index = { 
        def messages = Message.list()
        withFormat {
            json { 
                render(contentType:"application/json") {
                    messages
                }
            }
            html messages:messages
        }
    }
}
