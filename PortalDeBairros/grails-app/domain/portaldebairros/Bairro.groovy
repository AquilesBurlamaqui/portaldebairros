package portaldebairros

import portaldebairros.util.Media

class Bairro {
    String nome
    String descricao
    
    static hasMany = [media: Media]
    
    
    static constraints = {
        nome()
        descricao widget:'textarea'
              
        
        media()
    }
    
    String toString(){
        return nome
    }
}
