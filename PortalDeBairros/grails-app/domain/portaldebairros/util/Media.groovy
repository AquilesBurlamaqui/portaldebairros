package portaldebairros.util

class Media {
    
    int tamanho
    String nome
    String formato
    byte[] arquivo
    
    static constraints = {
        arquivo maxSize: 1024*1204*5
    }
}
