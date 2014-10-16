package portaldebairros

class Bairro {
    String nome
    String descricao
    byte[] imagem
    
    static constraints = {
        nome()
        descricao widget:'textarea'
        imagem maxSize: 1024*1024*15
        
        //teste pedro
    }
    
    String toString(){
        return nome
    }
}
