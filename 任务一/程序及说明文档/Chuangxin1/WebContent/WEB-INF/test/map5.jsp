<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<body style="height:90%;">  
    <div id="main" style="width:100%;height:100%;"></div>  
    <script>  
    function randomData() {  
        return Math.round(Math.random()*500);  
    }  
  
    var mydata = [  
        {name: '北京',value: randomData() },{name: '天津',value: randomData() },  
        {name: '上海',value: randomData() },{name: '重庆',value: randomData() },  
        {name: '河北',value: randomData() },{name: '河南',value: randomData() },  
        {name: '云南',value: randomData() },{name: '辽宁',value: randomData() },  
        {name: '黑龙江',value: randomData() },{name: '湖南',value: randomData() },  
        {name: '安徽',value: randomData() },{name: '山东',value: randomData() },  
        {name: '新疆',value: randomData() },{name: '江苏',value: randomData() },  
        {name: '浙江',value: randomData() },{name: '江西',value: randomData() },  
        {name: '湖北',value: randomData() },{name: '广西',value: randomData() },  
        {name: '甘肃',value: randomData() },{name: '山西',value: randomData() },  
        {name: '内蒙古',value: randomData() },{name: '陕西',value: randomData() },  
        {name: '吉林',value: randomData() },{name: '福建',value: randomData() },  
        {name: '贵州',value: randomData() },{name: '广东',value: randomData() },  
        {name: '青海',value: randomData() },{name: '西藏',value: randomData() },  
        {name: '四川',value: randomData() },{name: '宁夏',value: randomData() },  
        {name: '海南',value: randomData() },{name: '台湾',value: randomData() },  
        {name: '香港',value: randomData() },{name: '澳门',value: randomData() }  
    ];  
      
    var guangdongData = [  
        {name: '广州市',value: randomData() },{name: '佛山市',value: randomData() },  
        {name: '肇庆市',value: randomData() },{name: '韶关市',value: randomData() },  
        {name: '清远市',value: randomData() },{name: '云浮市',value: randomData() },  
        {name: '茂名市',value: randomData() },{name: '湛江市',value: randomData() },  
        {name: '江门市',value: randomData() },{name: '东莞市',value: randomData() },  
        {name: '阳江市',value: randomData() },{name: '深圳市',value: randomData() },  
        {name: '惠州市',value: randomData() },{name: '河源市',value: randomData() },  
        {name: '汕尾市',value: randomData() },{name: '揭阳市',value: randomData() },  
        {name: '河源市',value: randomData() },{name: '梅州市',value: randomData() },  
        {name: '潮州市',value: randomData() },{name: '汕头市',value: randomData() },  
        {name: '中山市',value: randomData() },{name: '珠海市',value: randomData() }  
    ];  
      
    function drawMap(darwMapType, data) {  
        var option = {  
            backgroundColor: '#FFFFFF',  
            title: {  
                text: '全国地图',  
                subtext: '纯属虚构',  
                x:'center'  
            },  
            tooltip : {  
                trigger: 'item'  
            },  
            visualMap: {  
                show : false,  
                x: 'left',  
                y: 'bottom',  
                splitList: [   
                    {start: 500, end:600},{start: 400, end: 500},  
                    {start: 300, end: 400},{start: 200, end: 300},  
                    {start: 100, end: 200},{start: 0, end: 100},  
                ],  
                color: ['#16CC33', '#10FF00', '#16FF33','#139900', '#13CC00', '#10CC00']  
            },  
            series: [{  
                name: '随机数据',  
                type: 'map',  
                mapType: darwMapType,   
                roam: true,  
                label: {  
                    normal: {  
                        show: false  
                    },  
                    emphasis: {  
                        show: false  
                    }  
                },  
                data:data  
            }]  
        };  
        echarts.dispose(document.getElementById('main'));//先去掉原来的地图  
        var chart = echarts.init(document.getElementById('main'));  
        chart.setOption(option);  
          
        chart.on("dblclick", function(param) {  
            drawMap(param.name, guangdongData);  
        });  
    }  
      
    window.onload = function() {  
        drawMap('china', mydata);  
    }  
  
    </script>  
</body>  
</html>  