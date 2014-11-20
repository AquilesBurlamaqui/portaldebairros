package portaldebairros

import portaldebairros.util.Media

class Servico {
    String nome
    Usuario usuario 
    String descricao
    Media imagem
    static constraints = {
        nome()
        usuario()
        descricao widget: 'textarea' 
        imagem()
    }
    
    String toString() {
        return nome
    }
}
