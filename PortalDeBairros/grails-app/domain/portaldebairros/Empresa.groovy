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
        CNPJ(size:18)
        descricao widget: 'textarea'
        contato()
        email(email:true)
    }
}
