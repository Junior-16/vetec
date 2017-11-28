$(document).ready(function(){
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
		$(".date").append(x.getMonth()+1+"/"+x.getFullYear());
		pointer = 0;
		if(day >= 1 && day <= 7){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+7)).append(day);
					pointer = i+7;
				}i++;
			}
		}
		if(day >= 8 && day <= 14){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+14)).append(day);
					pointer = i + 14;
				}i++;
			}
		}
		if(day >= 15 && day <= 21){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+21)).append(day);
					pointer = i + 21;
				}i++;
			}
		}
		if(day >= 22 && day <= 28){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+28)).append(day);
					pointer = i + 28;
				}i++;
			}
		}
		if(day >= 29 && day <= 31){
			i = 0;
			while (i <= 6){
				if(week == i){
					$("#"+String(i+35)).append(day);
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
	print();
	divider();
	removeWrongDay(x.getMonth());
	$("td").on("click",function(){
		$('#modal').modal('show');
	});
	$("#newTask").click(function(){
		$(".modal-body .row").append("<div class = 'col-md-3'><div class='form-group'><input type='text' class='form-control data' placeholder='Data'></div></div><div class='col-md-9'><div class='form-group'><input type='text' class='form-control' placeholder='Tarefa'></div></div>");
	});
	
});