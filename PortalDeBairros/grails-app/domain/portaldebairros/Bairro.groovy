package portaldebairros

class Bairro {
    String nome
    String descricao
    byte[] imagem

    static constraints = {
        nome()
        descricao()
        imagem maxSize: 1024 * 1024 * 2
    }
    
    String toString() {
        return nome
    }
}
