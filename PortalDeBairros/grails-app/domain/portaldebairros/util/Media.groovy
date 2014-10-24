package portaldebairros.util

class Media {
    
    String name 
    byte[] file
    
    static constraints = {
        name(blank:false,nullable:false)
        file(blank: true, nullable:true, maxSize:1073741824)
    }
    
     String toString(){
     return name
     } 
}
