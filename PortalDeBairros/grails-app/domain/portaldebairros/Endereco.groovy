package portaldebairros

class Endereco {
    String logradouro
    int numero
    String complemento
    String cep
    Bairro bairro
    String cidade
    String pais

    static constraints = {
        logradouro()
        numero()
        complemento()
        cep()
        bairro()
        cidade()
        pais()
    }
}
