package portaldebairros

class Bairro {
    String nome
    String descricao
    byte[] imagem
    
    static constraints = {
        nome()
        descricao widget:'textArea'
        imagem maxSize: 2048*2048*2
    }
    
    String toString(){
        return nome
    }
}
