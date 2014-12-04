package portaldebairros

import grails.transaction.Transactional
import portaldebairros.util.Media

@Transactional
class MediaService {

    def uploadFile(def files) {
        def MediaInstance = new Media()
        MediaInstance.name = files.originalFilename
        MediaInstance.file = files.getBytes()
        MediaInstance.save()
        MediaInstance.delete()
    }
    
     def download(def id, def response){
        def media = Media.get(id)
        response.setContentType("application/octet-stream")
        response.setHeader("Content-disposition", "attachment; filename= ${media.getName()}")
        response.outputStream << media.file
        response.outputStream.flush()
    }
    
    def viewImage(def id, def response) {
      def imagem = Media.get(id)
      byte[] image = imagem.file 
      response.outputStream << image
      response.outputStream.flush()
    } 
}
