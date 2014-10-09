package portaldebairros

class Empresa {
    String nome
    Endereco endereco
    String CNPJ
    String descricao
    int contato
    String email
    
    static constraints = {
        nome()
        endereco()
        CNPJ()
        descricao widget: 'textarea'
        contato()
        email()
    }
}
