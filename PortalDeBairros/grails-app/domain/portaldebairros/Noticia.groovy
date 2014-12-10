package portaldebairros

import portaldebairros.util.Media

class Noticia {
    String titulo
    String descricao
    Usuario usuario
    
    static hasmany = [imagem: Media]
      
    //modificado
    static constraints = {
        titulo()
        descricao widget:"textarea" 
        
        
    }
    
    String toString(){
        return titulo
    }
}
