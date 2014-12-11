package portaldebairros

import portaldebairros.util.Media

class Noticia {
    String titulo
    String descricao
    Usuario usuario
    
    static hasMany = [imagem: Media]
      
    
    static constraints = {
        titulo()
        descricao widget:"textarea" 
        
        imagem()
        
    }
    
    String toString(){
        return titulo
    }
}
