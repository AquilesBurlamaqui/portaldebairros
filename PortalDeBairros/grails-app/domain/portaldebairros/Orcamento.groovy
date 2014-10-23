package portaldebairros

import portaldebairros.util.Media

class Orcamento {
    String nome
    int  custo
    Media arquivo
    
    static belongsTo = [solucao: Solucao] 
    
    static constraints = {
        nome()
        custo()
        arquivo()
        
    }
    String toString(){
     return nome
     } 
}
