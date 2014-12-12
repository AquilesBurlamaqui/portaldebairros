package portaldebairros

class PortalController {

    def index() {
        
        [listaNews: Noticia.list()[0]]
    }
    
    def section() {
        
    }
} 
