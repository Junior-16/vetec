$(document).ready(function(){
	var size = ($(window).height() - $(".header").height() - $(".footer").height());
	$(".conteudo").css("min-height", size+"px");
	$("#cep").mask("00000-000");
	$("#cpf").mask("000.000.000-00");
	$("#telefone").mask("(00) 0 0000-0000");
	$('.icons-link').tooltip();
	if(document.URL == "http://localhost:8080/Veterinaria/"){
		$.toaster({ message : 'Seja Bem-Vindo', timeOut:15000, title : 'Você está logado', priority : 'info'});
	}else{
		
	}
	
	var cadastro = 
		"<div class='row container'>" +
			"<form method='POST' action='/cadastrarProprietario'>"+
			"<div class='col-md-4'>" +
			"<label>Nome do Proprietário</label>" +
			"<input class='form-control'>" +
			"</div>" +
			"<div class='col-md-2' >" +
			"<label>Cep</label>" +
			"<input type='text' class='form-control' maxlength='10' id='cep_prop'>" +
			"</div>" +
			"<div class='col-md-3'>" +
			"<label>CPF</label>" +
			"<input class='form-control' id='cpf_prop' maxlength='14'>" +
			"</div>" +
			"<div class='col-md-3'>" +
			"<label>Telefone</label>" +
			"<input class='form-control' id='tel_prop' placeholder='(xx) xxxxx-xxxx'>" +
			"</div>" +
			"<div class='col-md-6'>" +
			"<label>Profissão</label>" +
			"<input class='form-control'>" +
			"<label>Endereço</label>" +
			"<textarea class='form-control' id='exampleTextarea' rows='2'></textarea></div>" +
			"<div class='col-md-6'>" +
			"<label>Referências</label>" +
			"<textarea class='form-control' id='exampleTextarea' rows='6'></textarea></div>" +
			"<div class='col-md-2'> " +
			"<button type='submit' class='btn btn-success'>Cadastrar</button>" +
			"</div>"+
			"</form>"+"</div>"
			
	$("#proprietario").click(function(){
		$("#content").hide();
		$("#content").append(cadastro);
		$("#cep_prop").mask("00000-000");
		$("#cpf_prop").mask("000.000.000-00");
		$("#tel_prop").mask("(00) 0 0000-0000");
		$("#content").show("fade");
	});
});