$(document).ready(function(){
	//Adapta o footer
	var size = ($(window).height() - $(".footer").height() - $(".header").height());
	$(".conteudo").css("min-height", size+"px");
	//Aplica as máscaras
	$("#cep").mask("00000-000");
	$("#cpf").mask("000.000.000-00");
	$("#telefone").mask("(00) 0 0000-0000");

	$('#save').tooltip();
	$(".change").tooltip();
	$(".changeOwner").tooltip();
	$(".saveAnimal").tooltip();
	$(".cadastrarUser").tooltip();
	$(".cadastrarProprietario").tooltip();
	$(".change").click(function(){
		$("#changeProfile").submit();
	});
	$(".changeOwner").click(function(){
		$("#changeOwner").submit();
	});
	$(".saveAnimal").click(function(){
		$("#cadastroAnimal").submit();
	});
	$(".salvarProprietario").click(function(){
		$("#salvarProprietario").submit()
	});
	$(".cadastrarProprietario").click(function(){
		$("#cadastrarProprietario").submit();
	});
	$(".cadastrarUser").click(function(){
		$("#cadastrarUser").submit();
	});
	$("#save").click(function(){
		$("#infogerais").submit();
	});
	
	/*if(document.URL == "http://localhost:8080/Veterinaria/"){
		$.toaster({ message : 'Seja Bem-Vindo', timeOut:15000, title : 'Você está logado', priority : 'info'});
	}else{
		
	}*/
	
	//Efeito da barra de busca
	$(".glyphicon-chevron-down").click(function(){
		var x = $(this)[0].nextElementSibling.nextElementSibling.className;
		var classe = $(this)[0].className;
		var y = "#"+$(this)[0].id;
		$("."+x).toggle("slow");
		if( classe == "glyphicon glyphicon-chevron-right"){
			$(y).removeClass();
			$(y).addClass("glyphicon glyphicon-chevron-down");
		}else{
			$(y).removeClass();
			$(y).addClass("glyphicon glyphicon-chevron-right");
		}
	});
	
});