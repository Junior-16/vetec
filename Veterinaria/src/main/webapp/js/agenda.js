$(document).ready(function(){
	
	//Create Data bank
	db = new loki('Agenda.db',{
		autosave:true,
		autosaveInterval: 1000,
		autoload:true
	});
	db.loadDatabase();
	
	function print(){
		index = 0;
		line = 0;
		while(index <= 41){
			if(index == 0 || index == 7 || index == 14 || index == 21 || index == 28 || index == 35){
				$(".tabela").append("<tr class = "+String(index) +">"+" "+"</tr>");
				line = index;
			}
			$("."+String(line)).append("<td>"+"<p id = "+String(index)+">"+" "+"</p>"+"</td>");
			index++;
		}
	}
	function divider(){
		x = new Date();
		day = x.getDate();
		week = x.getDay();
		$("#date").append(defineDate(x)+x.getFullYear());// Aqui
		pointer = 0;
		if(day >= 1 && day <= 7){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+7)).append(day);
					$("#"+String(i+7))[0].offsetParent.style.border = 'solid #9E9E9E';;
					pointer = i+7;
				}i++;
			}
		}
		if(day >= 8 && day <= 14){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+14)).append(day);
					$("#"+String(i+14))[0].offsetParent.style.border = 'solid #9E9E9E';;
					pointer = i + 14;
				}i++;
			}
		}
		if(day >= 15 && day <= 21){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+21)).append(day);
					$("#"+String(i+21))[0].offsetParent.style.border = 'solid #9E9E9E';;
					pointer = i + 21;
				}i++;
			}
		}
		if(day >= 22 && day <= 28){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+28)).append(day);
					$("#"+String(i+28))[0].offsetParent.style.border = 'solid #9E9E9E';;
					pointer = i + 28;
				}i++;
			}
		}
		if(day >= 29 && day <= 31){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+35)).append(day);
					$("#"+String(i+35))[0].offsetParent.style.border = 'solid #9E9E9E';//Parei Aqui
					pointer = i + 35;
				}i++;
			}
		}
		printDays(pointer,day);
	}
	function printDays(pointer,day){
		days = pointer;
		date = day;
		while(days >= 0){
			date-=1;
			$("#"+String(days-1)).append(date);
			if(date == 1){
				break;
			}
			days-=1;
		}
		d = pointer;
		dat = day;
		while(d <= 41){
			dat += 1;
			$("#"+String(d+1)).append(dat);
			d+=1;
			if(dat == 31){
				break;
			}
		}

	}
	
	function removeWrongDay(month){
		if(month == 1 || month == 3 || month == 5 || month == 8 || month == 10){
			remove = 41;
			while(remove >= 0){
				if($("#"+String(remove))[0].innerText == "31"){
					$("#"+String(remove)).html('');
					$("#"+String(remove))[0].offsetParent.remove();
					break;
				}
				$("#"+String(remove))[0].offsetParent.remove();
				remove-=1;
			}
		}
	}
	
	function defineDate(objectDate){
		if(objectDate.getMonth() == 0){
			return "Jan/";
		}
		if(objectDate.getMonth() == 1){
			return "Fev/";
		}
		if(objectDate.getMonth() == 2){
			return "Mar/";
		}
		if(objectDate.getMonth() == 3){
			return "Abr/";
		}
		if(objectDate.getMonth() == 4){
			return "Mai/";
		}
		if(objectDate.getMonth() == 5){
			return ("Jun/");
		}
		if(objectDate.getMonth() == 6){
			return "Jul/";
		}
		if(objectDate.getMonth() == 7){
			return "Ago/";
		}
		if(objectDate.getMonth() == 8){
			return "Set/";
		}
		if(objectDate.getMonth() == 9){
			return "Out/";
		}
		if(objectDate.getMonth() == 10){
			return "Nov/";
		}
		else{
			return "Dez/";
		}
	}
	
	function removeCleanDay(){
		index = 0;
		verdade = 0;
		while(index <= 6){
			$("#"+String(index))[0].offsetParent.remove();
			index++;
		}
	}
	
	print();
	divider();
	removeWrongDay(x.getMonth());
	removeCleanDay();
	
	$("td").on("click",function(){
		$('#modal').modal('show');
		$("#newTask").attr("data-date",this.children[0].innerHTML);
		
	});
	
	$("#salvar").click(function(){
		//console.log($(this).attr("data-date"));
	});

	$("#newTask").on('click',function(){
		$(".modal-body .row").append("<div class = 'col-md-4'><div class='form-group'><input type='text' class='form-control data' value="+$(this).attr('data-date')+"/"+(x.getMonth()+1)+"/"+x.getFullYear()+"></div></div><div class='col-md-8'><div class='form-group'><input type='text' class='form-control' placeholder='Tarefa'></div></div>");
	});	
		
	
	$("#salvar").click(function(){
		meString = defineDate(x)+x.getFullYear();
		var month = db.getCollection(meString);
		
	});
	
});