package portaldebairros
import portaldebairros.util.Media


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProblemaController {
    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def problemas = Problema.list()
        params.max = Math.min(max ?: 10, 100)
        respond Problema.list(params), model:[problemaInstanceCount: Problema.count(), problemas:problemas]
    }

    def show(Problema problemaInstance) {
        respond problemaInstance
    }

    def create() {
        respond new Problema(params)
    }
    
    def createJson(){

    }
    
     def upload(){
        def MediaInstance = new Media()
        def files = request.getFile('arquivo')
        MediaInstance.name = files.originalFilename
        MediaInstance.file = files.getBytes()
        MediaInstance.save()
        MediaInstance.delete()
     }
     
    def createSolucao() {
        redirect(controller: "Solucao", action: "create")
    }

    @Transactional
    def save(Problema problemaInstance) {
        if (problemaInstance == null) {
            notFound()
            return
        }

        if (problemaInstance.hasErrors()) {
            respond problemaInstance.errors, view:'create'
            return
        }

        problemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'problema.label', default: 'Problema'), problemaInstance.id])
                redirect problemaInstance
            }
            '*' { respond problemaInstance, [status: CREATED] }
        }
    }

    def edit(Problema problemaInstance) {
        respond problemaInstance
    }

    @Transactional
    def update(Problema problemaInstance) {
        if (problemaInstance == null) {
            notFound()
            return
        }

        if (problemaInstance.hasErrors()) {
            respond problemaInstance.errors, view:'edit'
            return
        }

        problemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Problema.label', default: 'Problema'), problemaInstance.id])
                redirect problemaInstance
            }
            '*'{ respond problemaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Problema problemaInstance) {

        if (problemaInstance == null) {
            notFound()
            return
        }

        problemaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Problema.label', default: 'Problema'), problemaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'problema.label', default: 'Problema'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
