package drl2

class Item_categoryController {
    static scaffold = Item_category
    def save = {
        def contact = new Item_category(params)
        contact.save flush: true, failOnError: true
        redirect(uri: request.getHeader('referer') )
        flash.message = message(code: 'default.created.message', args: [message(code: 'Item_category.label', default: 'Machine'), contact.id])
    }

    def index() {
		if(session.user) {
            def queryResults= Item_category.findAll("from Item_category b")
            render(view: "/Item_category/index", model: [Item_categoryList: queryResults])
        }
        else
            redirect(controller:'user',action:'login')
    }


    def update(Long id) {
        def personInstance = Item_category.get(id)
        if (!personInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'Item_category.label', default: 'Item_category'), id])
            redirect(action: "index")
            return
        }
        personInstance.properties = params
        if (!personInstance.save(flush: true)) {
            render(view: "edit", model: [personInstance: personInstance])
            return
        }
        flash.message = message(code: 'default.updated.message', args: [message(code: 'Item_category.label', default: 'Machine'), personInstance.id])
        redirect(action: "show", id: personInstance.id)
    }
}