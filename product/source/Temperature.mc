using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;

class Temperature extends Ui.Drawable {
	// 定义需要用到的参数
	private var TempX;
	private var TempY;
	//定义的温度数值,用于显示时候的展示
	private var tempNum=30;
	//数值数组 ~ - -4 15-22 31+
	var tempArray=[-4,12,22,31];
	var tempColor=[0x531aff,0x31e88c,0xd3ff4d,0xffa54d,0xff8c66];

	function initialize(params) {
		Drawable.initialize(params);
		// 初始化时获取参数
		TempX=params[:x];
		TempY=params[:y];
	}
	function getTemperature(){
		// 这里做那个温度值返回
	}

	function draw(dc) {
		if (tempNum<=-4){
			dc.setColor(0x531aff,Graphics.COLOR_TRANSPARENT);
		}else if(tempNum<12){
			dc.setColor(0x31e88c,Graphics.COLOR_TRANSPARENT);
		}else if(tempNum<22){
			dc.setColor(0xd3ff4d,Graphics.COLOR_TRANSPARENT);
		}else if(tempNum<31){
			dc.setColor(0xCC6938,Graphics.COLOR_TRANSPARENT);
		}else{
			dc.setColor(0xAD0000,Graphics.COLOR_TRANSPARENT);
		}
		
		dc.drawText(TempX,TempY,DATEFont,tempNum+"°C",Graphics.TEXT_JUSTIFY_CENTER);
        // TemperatureLabel.setText("36C°");
		// temperatureLabel.setText("36");
		// 
		// dc.setText(text)
	}
}
