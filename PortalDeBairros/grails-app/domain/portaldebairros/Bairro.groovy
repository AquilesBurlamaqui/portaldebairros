package portaldebairros

class Bairro {
    String nome
    String descricao
    
    byte[] imagem
    
    static hasMany = [problemas : Problema, servicos : Servico, imoveis : Imovel, noticias : Noticia, solucoes : Solucao]
    
    
    static constraints = {
        nome()
        descricao widget:'textarea'
        
        noticias()
        problemas()
        solucoes()
        servicos()
        imoveis()
        
        imagem(nullable:true, maxSize: 1073741824)
    }
    
    String toString(){
        return nome
    }
}
