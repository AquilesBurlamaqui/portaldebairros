package portaldebairros

import portaldebairros.util.Media

class Problema {
    String nome
    String descricao
    String address
    BigDecimal latitude
    BigDecimal longitude
    static hasMany = [solucoes: Solucao,media: Media]
    
    
    static constraints = {
        nome()
        descricao()
        latitude()
        longitude()
        media()
        address()
    }
    String toString(){
     return nome
     } 
     
     def jsonBuilder = new groovy.json.JsonBuilder()


}