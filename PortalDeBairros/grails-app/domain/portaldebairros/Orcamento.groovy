package portaldebairros

import portaldebairros.util.Media

class Orcamento {
    String nome
    int  custo
    
    static belongsTo = [solucao: Solucao] 
    static hasMany = [media: Media]
    
    static constraints = {
        nome()
        custo()
        media()
    }
    String toString(){
     return nome
     } 
}
