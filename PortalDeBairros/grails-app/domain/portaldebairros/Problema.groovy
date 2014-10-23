package portaldebairros

import portaldebairros.util.Media

class Problema {
    String nome
    String descricao
    Float latitude
    Float longitude
    Media imagem
    static hasMany = [solucoes: Solucao]
    
    static constraints = {
        nome()
        descricao()
        latitude()
        longitude()
        imagem(blank:true, nullable:true)
    }
    String toString(){
     return nome
     } 
}
