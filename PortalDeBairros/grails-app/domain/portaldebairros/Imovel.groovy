package portaldebairros

class Imovel {
    String nome
    String descricao
    Endereco endereco
    
    static constraints = {
        nome()
        descricao widget: 'textarea'
        endereco()    
    }
    String toString() {
        return nome;
    }
}
