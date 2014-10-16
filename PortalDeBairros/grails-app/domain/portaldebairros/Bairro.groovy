package portaldebairros

class Bairro {
    String nome
    String descricao
    byte[] imagem

    static constraints = {
        //nome min: 2
        descricao widget:'textarea'
        imagem maxSize: 1024*1024*15
    }
    
    String toString(){
        return nome
    }
}
