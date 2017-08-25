$(document).ready(function(){
	var size = ($(window).height() - $(".footer").height() - $(".header").height());
	$(".conteudo").css("min-height", size+"px");
	$("#cep").mask("00000-000");
	$("#cpf").mask("000.000.000-00");
	$("#telefone").mask("(00) 0 0000-0000");
	$('#save').tooltip();
	$(".change").tooltip();
	$(".change").click(function(){
		$("#changeProfile").submit();
	});
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
		var classe = $(this)[0].firstElementChild.className;
		var y = "#"+$(this)[0].firstElementChild.id;
		$(x).toggle("slow");
		if( classe == "glyphicon glyphicon-chevron-right"){
			$(y).removeClass();
			$(y).addClass("glyphicon glyphicon-chevron-down");
		}else{
			$(y).removeClass();
			$(y).addClass("glyphicon glyphicon-chevron-right");
		}
	});
	
});