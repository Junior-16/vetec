$(document).ready(function(){
	var size = ($(window).height() - $(".header").height() - $(".footer").height());
	$(".conteudo").css("min-height", size+"px");
	$("#cep").mask("00000-000");
	$("#cpf").mask("000.000.000-00");
	$("#telefone").mask("(00) 0 0000-0000");
	$('#save').tooltip();
	$(".saveAnimal").tooltip();
	$(".saveAnimal").click(function(){
		$("#cadastroAnimal").submit();
	});
	if(document.URL == "http://localhost:8080/Veterinaria/"){
		$.toaster({ message : 'Seja Bem-Vindo', timeOut:15000, title : 'Você está logado', priority : 'info'});
	}else{
		
	}
	$(".proprietario").click(function(){
		$(".dadosProp").show("fast");
		var x = "."+$(this)[0].nextElementSibling.className;
		$(x).toggle("slow");
	});
	
});