/***************�����ж�************/
function panduandate(date1){
	var day=date1.substring(0,date1.indexOf(" "));
	var hour=date1.substring(date1.indexOf(" "),date1.lastIndexOf("��")).trim();
	var min=date1.substring(date1.lastIndexOf(" "),date1.indexOf("��"));
	
	var now=new Date();
	var s;//�жϺ��ʱ��
	if(day=='����'){
		var yy = now.getFullYear();      //��
		var mm = now.getMonth() + 1;     //��
		var dd = now.getDate();   
		s=yy+"/"+mm+"/"+dd+" "+hour+":"+min+":00";
		
	}
	if(day=='����'){
		var a=now.getTime();
		var mintian=new Date(a+1*24*60*60*1000);
		var yy = mintian.getFullYear();      //��
		var mm = mintian.getMonth() + 1;     //��
		var dd = mintian.getDate(); 
		s=yy+"/"+mm+"/"+dd+" "+hour+":"+min+":00";
		
	}
	if(day=='����'){
		var a=now.getTime();
		var mintian=new Date(a+2*24*60*60*1000);
		var yy = mintian.getFullYear();      //��
		var mm = mintian.getMonth() + 1;     //��
		var dd = mintian.getDate(); 
		s=yy+"/"+mm+"/"+dd+" "+hour+":"+min+":00";
	}
	
	var timestamp = new Date(s);
	return timestamp;
}











js����ν��ַ���ת��Ϊʱ�䣬������ʱ���
//����ʱ��  
end_str = ("2014-01-01 10:15:00").replace(/-/g,"/");//һ��õ���ʱ��ĸ�ʽ���ǣ�yyyy-MM-dd hh24:mi:ss�������Ҿ�������������ӣ���/�ĸ�ʽ���Ͳ���replace�ˡ�  
var end_date = new Date(end_str);//���ַ���ת��Ϊʱ��  
//��ʼʱ��  
sta_str = ("2014-01-01 10:15:00").replace(/-/g,"/");  
var sta_date = new Date(sta_str);  
var num = (end_date-sta_date)/(1000*3600*24);//�������ʱ���ʱ�����������  
var days = parseInt(Math.ceil(num));//ת��Ϊ���죨С����Ļ��粻��ת�ˣ�  
  
//����Ÿ���js��һЩ���ʱ��������ķ���  
var myDate = new Date();    
    myDate.getYear();      //��ȡ��ǰ���(2λ)    
    myDate.getFullYear(); //��ȡ���������(4λ,1970-????)    
    myDate.getMonth();      //��ȡ��ǰ�·�(0-11,0����1��)    
    myDate.getDate();      //��ȡ��ǰ��(1-31)    
    myDate.getDay();        //��ȡ��ǰ����X(0-6,0����������)    
    myDate.getTime();      //��ȡ��ǰʱ��(��1970.1.1��ʼ�ĺ�����)    
    myDate.getHours();      //��ȡ��ǰСʱ��(0-23)    
    myDate.getMinutes();    //��ȡ��ǰ������(0-59)    
    myDate.getSeconds();    //��ȡ��ǰ����(0-59)    
    myDate.getMilliseconds(); //��ȡ��ǰ������(0-999)    
    myDate.toLocaleDateString();    //��ȡ��ǰ����    
    var mytime=myDate.toLocaleTimeString();    //��ȡ��ǰʱ��    
    myDate.toLocaleString( );      //��ȡ������ʱ��----����漰��ʱ���룬ֱ��ʹ�ü��ɡ�   
    
    
    
    
    һ ����ת�ַ���
    dateToString: function(date){ 
  var year = date.getFullYear(); 
  var month =(date.getMonth() + 1).toString(); 
  var day = (date.getDate()).toString();  
  if (month.length == 1) { 
      month = "0" + month; 
  } 
  if (day.length == 1) { 
      day = "0" + day; 
  }
  var dateTime = year + "-" + month + "-" + day;
  return dateTime; 
},


�� �ַ���ת����
stringToDate : function(dateStr,separator){
     if(!separator){
            separator="-";
     }
     var dateArr = dateStr.split(separator);
     var year = parseInt(dateArr[0]);
     var month;
     //�����·�Ϊ04���������                         
     if(dateArr[1].indexOf("0") == 0){
         month = parseInt(dateArr[1].substring(1));
     }else{
          month = parseInt(dateArr[1]);
     }
     var day = parseInt(dateArr[2]);
     var date = new Date(year,month -1,day);
     return date;
 },
    
    
   
   
    
    



