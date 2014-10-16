import portaldebairros.Endereco
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_portalDeBairros_endereco_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/endereco/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: enderecoInstance, field: 'logradouro', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("endereco.logradouro.label"),'default':("Logradouro")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("logradouro"),'required':(""),'value':(enderecoInstance?.logradouro)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: enderecoInstance, field: 'numero', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("endereco.numero.label"),'default':("Numero")],-1)
printHtmlPart(2)
invokeTag('field','g',19,['name':("numero"),'type':("number"),'value':(enderecoInstance.numero),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: enderecoInstance, field: 'complemento', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("endereco.complemento.label"),'default':("Complemento")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("complemento"),'required':(""),'value':(enderecoInstance?.complemento)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: enderecoInstance, field: 'cep', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("endereco.cep.label"),'default':("Cep")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("cep"),'required':(""),'value':(enderecoInstance?.cep)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: enderecoInstance, field: 'bairro', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("endereco.bairro.label"),'default':("Bairro")],-1)
printHtmlPart(2)
invokeTag('select','g',46,['id':("bairro"),'name':("bairro.id"),'from':(portaldebairros.Bairro.list()),'optionKey':("id"),'required':(""),'value':(enderecoInstance?.bairro?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: enderecoInstance, field: 'cidade', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("endereco.cidade.label"),'default':("Cidade")],-1)
printHtmlPart(2)
invokeTag('textField','g',55,['name':("cidade"),'required':(""),'value':(enderecoInstance?.cidade)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: enderecoInstance, field: 'pais', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("endereco.pais.label"),'default':("Pais")],-1)
printHtmlPart(2)
invokeTag('textField','g',64,['name':("pais"),'required':(""),'value':(enderecoInstance?.pais)],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412880433496L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
