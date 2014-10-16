import portaldebairros.Bairro
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_portalDeBairros_bairro_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/bairro/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: bairroInstance, field: 'nome', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("bairro.nome.label"),'default':("Nome")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nome"),'required':(""),'value':(bairroInstance?.nome)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bairroInstance, field: 'descricao', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("bairro.descricao.label"),'default':("Descricao")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("descricao"),'required':(""),'value':(bairroInstance?.descricao)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: bairroInstance, field: 'imagem', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("bairro.imagem.label"),'default':("Imagem")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1413484720530L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
