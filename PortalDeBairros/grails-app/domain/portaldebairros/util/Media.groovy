package portaldebairros.util

class Media {
    
    int size    
    String name 
    String format
    String fullPath
    Date uploadDate = new Date()
    byte[] file
    
    static constraints = {
        file maxSize: 1024*1204*5
    }
}
