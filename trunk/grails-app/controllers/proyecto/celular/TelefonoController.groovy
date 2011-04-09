package proyecto.celular

class TelefonoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [telefonoInstanceList: Telefono.list(params), telefonoInstanceTotal: Telefono.count()]
    }

    def create = {
        def telefonoInstance = new Telefono()
        telefonoInstance.properties = params
        return [telefonoInstance: telefonoInstance]
    }

    def save = {
        def telefonoInstance = new Telefono(params)
        if (telefonoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'telefono.label', default: 'Telefono'), telefonoInstance.id])}"
            redirect(action: "show", id: telefonoInstance.id)
        }
        else {
            render(view: "create", model: [telefonoInstance: telefonoInstance])
        }
    }

    def show = {
        def telefonoInstance = Telefono.get(params.id)
        if (!telefonoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'telefono.label', default: 'Telefono'), params.id])}"
            redirect(action: "list")
        }
        else {
            [telefonoInstance: telefonoInstance]
        }
    }

    def edit = {
        def telefonoInstance = Telefono.get(params.id)
        if (!telefonoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'telefono.label', default: 'Telefono'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [telefonoInstance: telefonoInstance]
        }
    }

    def update = {
        def telefonoInstance = Telefono.get(params.id)
        if (telefonoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (telefonoInstance.version > version) {
                    
                    telefonoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'telefono.label', default: 'Telefono')] as Object[], "Another user has updated this Telefono while you were editing")
                    render(view: "edit", model: [telefonoInstance: telefonoInstance])
                    return
                }
            }
            telefonoInstance.properties = params
            if (!telefonoInstance.hasErrors() && telefonoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'telefono.label', default: 'Telefono'), telefonoInstance.id])}"
                redirect(action: "show", id: telefonoInstance.id)
            }
            else {
                render(view: "edit", model: [telefonoInstance: telefonoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'telefono.label', default: 'Telefono'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def telefonoInstance = Telefono.get(params.id)
        if (telefonoInstance) {
            try {
                telefonoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'telefono.label', default: 'Telefono'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'telefono.label', default: 'Telefono'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'telefono.label', default: 'Telefono'), params.id])}"
            redirect(action: "list")
        }
    }
}
