package portaldebairros



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SolucaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Solucao.list(params), model:[solucaoInstanceCount: Solucao.count()]
    }

    def show(Solucao solucaoInstance) {
        respond solucaoInstance
    }

    def create() {
        respond new Solucao(params)
    }
    def createOrcamento() {
        redirect(controller: "Orcamento", action: "create")
    }

    @Transactional
    def save(Solucao solucaoInstance) {
        if (solucaoInstance == null) {
            notFound()
            return
        }

        if (solucaoInstance.hasErrors()) {
            respond solucaoInstance.errors, view:'create'
            return
        }

        solucaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'solucao.label', default: 'Solucao'), solucaoInstance.id])
                redirect solucaoInstance
            }
            '*' { respond solucaoInstance, [status: CREATED] }
        }
    }

    def edit(Solucao solucaoInstance) {
        respond solucaoInstance
    }

    @Transactional
    def update(Solucao solucaoInstance) {
        if (solucaoInstance == null) {
            notFound()
            return
        }

        if (solucaoInstance.hasErrors()) {
            respond solucaoInstance.errors, view:'edit'
            return
        }

        solucaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Solucao.label', default: 'Solucao'), solucaoInstance.id])
                redirect solucaoInstance
            }
            '*'{ respond solucaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Solucao solucaoInstance) {

        if (solucaoInstance == null) {
            notFound()
            return
        }

        solucaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Solucao.label', default: 'Solucao'), solucaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'solucao.label', default: 'Solucao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
