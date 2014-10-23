package portaldebairros

class Servico {
    String nome
    //Usuario usuario
    String descricao
    static constraints = {
        nome()
        //usuario()
        descricao widget: 'textarea' 
    }
    
    String toString() {
        return nome
    }
}
