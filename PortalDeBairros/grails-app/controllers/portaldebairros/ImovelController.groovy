package portaldebairros



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImovelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Imovel.list(params), model:[imovelInstanceCount: Imovel.count()]
    }

    def show(Imovel imovelInstance) {
        respond imovelInstance
    }

    def create() {
        respond new Imovel(params)
    }

    @Transactional
    def save(Imovel imovelInstance) {
        if (imovelInstance == null) {
            notFound()
            return
        }

        if (imovelInstance.hasErrors()) {
            respond imovelInstance.errors, view:'create'
            return
        }

        imovelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'imovel.label', default: 'Imovel'), imovelInstance.id])
                redirect imovelInstance
            }
            '*' { respond imovelInstance, [status: CREATED] }
        }
    }

    def edit(Imovel imovelInstance) {
        respond imovelInstance
    }

    @Transactional
    def update(Imovel imovelInstance) {
        if (imovelInstance == null) {
            notFound()
            return
        }

        if (imovelInstance.hasErrors()) {
            respond imovelInstance.errors, view:'edit'
            return
        }

        imovelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Imovel.label', default: 'Imovel'), imovelInstance.id])
                redirect imovelInstance
            }
            '*'{ respond imovelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Imovel imovelInstance) {

        if (imovelInstance == null) {
            notFound()
            return
        }

        imovelInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Imovel.label', default: 'Imovel'), imovelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'imovel.label', default: 'Imovel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
