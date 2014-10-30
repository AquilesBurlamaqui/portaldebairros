package portaldebairros

class Solucao {
    String nome
    String descricao
    
    static hasmany = [orcamentos: Orcamento]
    
    static belongsTo = [problema: Problema]
    
    static constraints = {
        nome()
        descricao()
    }
    String toString(){
     return nome
    } 
}
