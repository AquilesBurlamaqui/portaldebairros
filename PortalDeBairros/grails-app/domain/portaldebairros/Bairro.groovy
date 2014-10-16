package portaldebairros

import portaldebairros.util.Media

class Bairro {
    String nome
    String descricao
    Media imagem
    
    
    static constraints = {
        nome()
        descricao widget:'textarea'
              
        
        //teste pedro
    }
    
    String toString(){
        return nome
    }
}
