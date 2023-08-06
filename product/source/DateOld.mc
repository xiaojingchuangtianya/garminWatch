using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;
using Toybox.System;
var dateFont;

class DateOld extends Ui.Drawable { 

    var oldX;
    var oldY;
    var iconFont;
    function initialize(params) {
		Drawable.initialize(params);
        dateFont=Ui.loadResource(Rez.Fonts.dateFont);
        iconFont=Ui.loadResource(Rez.Fonts.iconFont);
		// 初始化时获取参数
        oldX=params[:oldX];
		oldY=params[:oldY];
	}
    function draw(dc){
        dc.setColor(0x330000,Graphics.COLOR_TRANSPARENT);
        dc.drawText(oldX,oldY,dateFont,"周日 六月二十",Graphics.TEXT_JUSTIFY_CENTER);
        
        dc.drawText(120, 120, iconFont, "3", Graphics.TEXT_JUSTIFY_CENTER);
    }
    // 获取当前旧历,返回一个字符串
    // 这块打算是做成函数去获取新旧日历,然后配个array来显示对应的节日
    function getNowDay(){

    }
}