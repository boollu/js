/***************日期判断************/
function panduandate(date1){
	var day=date1.substring(0,date1.indexOf(" "));
	var hour=date1.substring(date1.indexOf(" "),date1.lastIndexOf("点")).trim();
	var min=date1.substring(date1.lastIndexOf(" "),date1.indexOf("分"));
	
	var now=new Date();
	var s;//判断后的时间
	if(day=='今天'){
		var yy = now.getFullYear();      //年
		var mm = now.getMonth() + 1;     //月
		var dd = now.getDate();   
		s=yy+"/"+mm+"/"+dd+" "+hour+":"+min+":00";
		
	}
	if(day=='明天'){
		var a=now.getTime();
		var mintian=new Date(a+1*24*60*60*1000);
		var yy = mintian.getFullYear();      //年
		var mm = mintian.getMonth() + 1;     //月
		var dd = mintian.getDate(); 
		s=yy+"/"+mm+"/"+dd+" "+hour+":"+min+":00";
		
	}
	if(day=='后天'){
		var a=now.getTime();
		var mintian=new Date(a+2*24*60*60*1000);
		var yy = mintian.getFullYear();      //年
		var mm = mintian.getMonth() + 1;     //月
		var dd = mintian.getDate(); 
		s=yy+"/"+mm+"/"+dd+" "+hour+":"+min+":00";
	}
	
	var timestamp = new Date(s);
	return timestamp;
}











js中如何将字符串转化为时间，并计算时间差
//结束时间  
end_str = ("2014-01-01 10:15:00").replace(/-/g,"/");//一般得到的时间的格式都是：yyyy-MM-dd hh24:mi:ss，所以我就用了这个做例子，是/的格式，就不用replace了。  
var end_date = new Date(end_str);//将字符串转化为时间  
//开始时间  
sta_str = ("2014-01-01 10:15:00").replace(/-/g,"/");  
var sta_date = new Date(sta_str);  
var num = (end_date-sta_date)/(1000*3600*24);//求出两个时间的时间差，这个是天数  
var days = parseInt(Math.ceil(num));//转化为整天（小于零的话剧不用转了）  
  
//下面才附上js中一些针对时间类操作的方法  
var myDate = new Date();    
    myDate.getYear();      //获取当前年份(2位)    
    myDate.getFullYear(); //获取完整的年份(4位,1970-????)    
    myDate.getMonth();      //获取当前月份(0-11,0代表1月)    
    myDate.getDate();      //获取当前日(1-31)    
    myDate.getDay();        //获取当前星期X(0-6,0代表星期天)    
    myDate.getTime();      //获取当前时间(从1970.1.1开始的毫秒数)    
    myDate.getHours();      //获取当前小时数(0-23)    
    myDate.getMinutes();    //获取当前分钟数(0-59)    
    myDate.getSeconds();    //获取当前秒数(0-59)    
    myDate.getMilliseconds(); //获取当前毫秒数(0-999)    
    myDate.toLocaleDateString();    //获取当前日期    
    var mytime=myDate.toLocaleTimeString();    //获取当前时间    
    myDate.toLocaleString( );      //获取日期与时间----如果涉及到时分秒，直接使用即可。   
    
    
    
    
    一 日期转字符串
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


二 字符串转日期
stringToDate : function(dateStr,separator){
     if(!separator){
            separator="-";
     }
     var dateArr = dateStr.split(separator);
     var year = parseInt(dateArr[0]);
     var month;
     //处理月份为04这样的情况                         
     if(dateArr[1].indexOf("0") == 0){
         month = parseInt(dateArr[1].substring(1));
     }else{
          month = parseInt(dateArr[1]);
     }
     var day = parseInt(dateArr[2]);
     var date = new Date(year,month -1,day);
     return date;
 },
    
    
   
   
    
    



