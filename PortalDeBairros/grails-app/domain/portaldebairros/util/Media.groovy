package portaldebairros.util
import  portaldebairros.Problema
import  portaldebairros.Orcamento



class Media {
    
    String name 
    byte[] file
    
    static constraints = {
        name(blank:false,nullable:false)
        file(blank: true, nullable:true, maxSize: 1024 * 1024 * 2)
    }
    
     String toString(){
     return name
     } 
}
