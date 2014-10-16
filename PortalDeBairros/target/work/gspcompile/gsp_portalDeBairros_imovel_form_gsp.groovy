import portaldebairros.Imovel
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_portalDeBairros_imovel_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/imovel/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: imovelInstance, field: 'nome', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("imovel.nome.label"),'default':("Nome")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nome"),'required':(""),'value':(imovelInstance?.nome)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: imovelInstance, field: 'descricao', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("imovel.descricao.label"),'default':("Descricao")],-1)
printHtmlPart(2)
invokeTag('textArea','g',19,['name':("descricao"),'cols':("40"),'rows':("5"),'required':(""),'value':(imovelInstance?.descricao)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: imovelInstance, field: 'endereco', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("imovel.endereco.label"),'default':("Endereco")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['id':("endereco"),'name':("endereco.id"),'from':(portaldebairros.Endereco.list()),'optionKey':("id"),'required':(""),'value':(imovelInstance?.endereco?.id),'class':("many-to-one")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1413485716922L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
