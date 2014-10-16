package portaldebairros

class Bairro {
    String nome
    String descricao
    byte[] imagem

    static constraints = {
        nome min: 2
        descricao widget:'textarea'
        imagem 2048*2048*2
    }
    
    String toString(){
        return nome
    }
}
