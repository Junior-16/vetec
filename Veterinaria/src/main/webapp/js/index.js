$(document).ready(function(){
	//Envia os formularios
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
	//Enviar informações gerais
	$("#ok").click(function(){
		ArrayId = ['#fichaClinica',"#data","#setor","#nome","#aptidao","#cidade","#endereco","#idade","#sexo","#peso","#raca"];
		ArrayClass = [".fichaClinica",".data",".setor",".nome",".aptidao",".cidade",".endereco",".idade",".sexo",".peso",".raca"];
		inserir(ArrayId, ArrayClass);
		var prontuario = {
				ficha_clinica:$("#fichaClinica").val(),
    			data: $("#data").val(),
    			setor:$("#setor").val(),
    			aptidao:$("#aptidao").val(),
    			cidade:$("#cidade").val(),
    			animal:{
    				id:$("#animalId").val(),
    				idade:$("#idade").val(),
    				sexo:$("#sexo").val(),
    				peso:$("#peso").val(),
    				especie:$("#especie").val(),
    				raca:$("#raca").val(),
    				nome:$("#nome").val()
    			}
    		};
			$.ajax({
				url: 'http://localhost:8080/Veterinaria/infoGerais',
	            data: JSON.stringify(prontuario),
	            method: "POST",
	            dataType: "json",
	            contentType: "application/json",
	            success(e){ 
	            	console.log(e); 
	            },
	            fail(e){ 
	            	console.log(e);
	            }
	           
		});
	});

	//Enviar informações da Anamnese Geral
	$("#ok1").click(function(){
		var classe = [".motivo",".antecedentes",".medidas"];
		var ids = ["#motivoConsulta","#antecedentesMorbidos","#medidasSanitarias"];
		inserir(ids,classe); 
		var anamneseGeral = {
				motivoConsulta:$("#motivoConsulta").val(),
				antecedentesMorbidos:$("#antecedentesMorbidos").val(),
				medidasSanitarias:$("#medidasSanitarias").val(),
				animal:{
						id:$("#animalId").val(),
						idade:$("#idade").val(),
						sexo:$("#sexo").val(),
						peso:$("#peso").val(),
						especie:$("#especie").val(),
						raca:$("#raca").val(),
						nome:$("#nome").val()
					}
		};
		$.ajax({
			method:"POST",
			url:'http://localhost:8080/Veterinaria/anamneseGeral',
			data:JSON.stringify(anamneseGeral),
			contentType:"application/json",
			success(e){
				console.log(e);
			},
			fail(e){
				console.log(e);
			}
		});
	});
	//Post dos campos da Anamnese Especial
	$("#ok2").click(function(){
		var arrayClass = [".sistemaVisual",".sistemaRespiratorio",".sistemaDigestivo",".sistemaReprodutivo",".sistemaUrinario",".sistemaNervoso",".sistemaLocomotor",".peleAnexos"];
		var arrayId = ["#sistemaVisual","#sistemaRespiratorio","#sistemaDigestivo","#sistemaReprodutivo","#sistemaUrinario","#sistemaNervoso","#sistemaLocomotor","#peleAnexos"];
		inserir(arrayId, arrayClass);
		var anamneseEspecial = {
				sistemaVisual:$("#sistemaVisual").val(),
				sistemaDigestivo:$("#sistemaDigestivo").val(),
				sistemaUrinario:$("#sistemaUrinario").val(),
				sistemaLocomotor:$("#sistemaLocomotor").val(),
				sistemaRespiratorio:$("#sistemaRespiratorio").val(),
				sistemaReprodutivo:$("#sistemaReprodutivo").val(),
				sistemaNervoso:$("#sistemaNervoso").val(),
				peleAnexos:$("#peleAnexos").val(),
				animal:{
    				id:$("#animalId").val(),
    				idade:$("#idade").val(),
    				sexo:$("#sexo").val(),
    				peso:$("#peso").val(),
    				especie:$("#especie").val(),
    				raca:$("#raca").val(),
    				nome:$("#nome").val()
    			}
		};
		$.ajax({
			method:"POST",
			url:'http://localhost:8080/Veterinaria/anamneseEspecial',
			data:JSON.stringify(anamneseEspecial),
			contentType:"application/json",
			success(e){
				console.log(e);
			},
			fail(e){
				console.log(e);
			}
		});
	});
	$("#ok3").click(function(){
		var arrayid = ["#conciencia","#escore","#tempoPreencimento","#tempCorporea","#freqRespiratoria","#medResidente","#micropapulas",
			"#freqCardiaca","#postura","#mucosas","#hidratacao","#pulso","#auscuCardiaca","#auscuRespiratoria",
			"#palpacao","#percussao","#linfondos","#observacoes","#suspeira"];
		var arrayclass = [".conciencia",".escore",".tempoPreencimento",".tempCorporea",".freqRespiratoria",".medResidente",".micropapulas",
			".freqCardiaca",".postura",".mucosas",".hidratacao",".pulso",".auscuCardiaca",".auscuRespiratoria",".palpacao",
			".percussao",".linfondos",".observacoes",".suspeira"];
		inserir(arrayid,arrayclass);
		var exameFisico = {
				conciencia:$("#conciencia").val(),
				tempoPreenchimento:$("#tempoPreencimento").val(),
				temperatura:$("#tempCorporea").val(),
				escoreCorporal:$("#escore").val(),
				freqCardiaca:$("#freqCardiaca").val(),
				medResidente:$("#medResidente").val(),
				micropapulas:$("#micropapulas").val(),
				freqRespiratoria:$("#freqRespiratoria").val(),
				postura:$("#postura").val(),
				coloracao:$("#mucosas").val(),
				hidratacao:$("#hidratacao").val(),
				pulso:$("#pulso").val(),
				auscCardiaca:$("#auscuCardiaca").val(),
				auscRespiratoria:$("#auscuRespiratoria").val(),
				palpacao:$("#palpacao").val(),
				percussao:$("#percussao").val(),
				linfonodos:$("#linfondos").val(),
				observacoes:$("#observacoes").val(),
				suspeita:$("#suspeira").val(),
				animal:{
    				id:$("#animalId").val(),
    				idade:$("#idade").val(),
    				sexo:$("#sexo").val(),
    				peso:$("#peso").val(),
    				especie:$("#especie").val(),
    				raca:$("#raca").val(),
    				nome:$("#nome").val()
    			}
				
		};
		$.ajax({
			method:"POST",
			url:'http://localhost:8080/Veterinaria/exameFisico',
			data:JSON.stringify(exameFisico),
			contentType:"application/json",
			success(e){
				console.log(e);
			},
			fail(e){
				console.log(e);
			}
		});
	});
		$("#ok4").click(function(){
			var Examescomplementares = {
				raspado:($("#raspado").is(":checked") == true).toString(),
				bioquímicos:($("#bioquimicos").is(":checked") == true).toString(),
				citopatológico:($("#citopatologico").is(":checked") == true).toString(),
				urina:($("#urina").is(":checked") == true).toString(),
				histopatológico:($("#histopatologico").is(":checked") == true).toString(),
				ECG:($("#ecg").is(":checked") == true).toString(), 
				ultrassonografia:($("#ultrassonografia").is(":checked") == true).toString(), 
				swab:($("#swab").is(":checked") == true).toString(),  
				radiografia:($("#radio").is(":checked") == true).toString(),  
				líquidos:($("#liquidos").is(":checked") == true).toString(),  
				coproparasitológico:($("#copro").is(":checked") == true).toString(),
				outros:$("#others").val(),
				hemograma:($("#hemograma").is(":checked") == true).toString(),
				animal:{
		    		id:$("#animalId").val(),
		    		idade:$("#idade").val(),
		    		sexo:$("#sexo").val(),
		    		peso:$("#peso").val(),
		    		especie:$("#especie").val(),
		    		raca:$("#raca").val(),
		    		nome:$("#nome").val()
		    	}
			};
			$.ajax({
				method:"POST",
				url:'http://localhost:8080/Veterinaria/examesComplementares',
				data:JSON.stringify(Examescomplementares),
				contentType:"application/json",
				success(e){
					console.log(e);
				},
				fail(e){
					console.log(e);
				}
			});
		});
		
		$("#ok5").click(function(){
			var resultados = {
				raio:($("#raio").is(":checked") == true).toString(),
				ultrasson:($("#ultrasson").is(":checked") == true).toString(),
				nExame:$("#nExame").val(), 
				regiao:$("#regiao").val(), 
				data:$("#data").val(),
				laudo:$("#laudo").val(),
				resultadoExames:$("#resultadoExames").val(), 
				diagnostico:$("#diagnostico").val(), 
				tratamento:$("#tratamento").val(),
				tratamentoDomiciliar:$("#tratamentoDomiciliar").val(), 
				retorno:$("#retorno").val(), 
				internado:$("#internado").val(), 
				alta:$("#alta").val(), 
				obito:$("#obito").val(), 
				eutanasia:$("#eutanasia").val(), 
				responsavel:$("#responsavel").val(),
				animal:{
		    		id:$("#animalId").val(),
		    		idade:$("#idade").val(),
		    		sexo:$("#sexo").val(),
		    		peso:$("#peso").val(),
		    		especie:$("#especie").val(),
		    		raca:$("#raca").val(),
		    		nome:$("#nome").val()
		    	}
			};
			$.ajax({
				method:"POST",
				url:"http://localhost:8080/Veterinaria/resultados",
				data:JSON.stringify(resultados),
				contentType:"application/json",
				success(e){
					console.log(e.message);
				},
				fail(e){
					console.log(e);
				}
			});
		});
		
	//Essa requisição tá retornando muitos objetos - ñ tá funcionando
	$("#complementares").click(function(){
		$.ajax({
			method:"GET",
			url:"http://localhost:8080/Veterinaria/examescomplementares",
			data:{id:$("#animalId").val()},
			contentType:"application/json",
			success(exames){
				console.log(exames);
			},
			fail(e){
				console.log("não deu");
			}
		});
	});
		
	$("#outros").click(function(){
		if($(this).is(":checked") == true){
			$('#others').removeAttr('disabled');
		}else{
			 $('#others').attr('disabled', 'disabled');
		}
	});
	
	$("#exame").click(function(){
		optionRemove = $("#conciencia")[0].firstElementChild.text;
		index = 0;
		$("#conciencia option").each(function(){
			var test = this;
			console.log(test);
			if(optionRemove == this.text && index != 0){
				this.remove();
			}index++;
		});
		index = 0;
		optionRemove = $("#escore")[0].firstElementChild.text;
		$("#escore option").each(function(){
			if(optionRemove == this.text && index != 0){
				this.remove();
			}index++;
		});
	});
	//Inserir informações atualizadas na aba de visualização
	function inserir(ArrayId, ArrayClass){
		var index = 0;
		while (index <ArrayId.length){
			$(ArrayClass[index]).html($(ArrayId[index]).val());
			index++;
		}
	}
});