package portaldebairros

import portaldebairros.util.Media

class Problema {
    String nome
    String descricao
    Float latitude
    Float longitude
    static hasMany = [solucoes: Solucao,media: Media]
    
    
    static constraints = {
        nome()
        descricao()
        latitude()
        longitude()
        media()
    }
    String toString(){
     return nome
     } 
}
