package portaldebairros

import portaldebairros.util.Media

class Orcamento {
    String nome
    int  custo
    Media file
    
    static belongsTo = [solucao: Solucao] 
    
    static constraints = {
        nome()
        custo()
        file(blank:true, nullable: true)
        
    }
    String toString(){
     return nome
     } 
}
