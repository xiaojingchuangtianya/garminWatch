using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;
using Toybox.System;


class DateNew extends Ui.Drawable { 
    var newX;
    var newY;


    function initialize(params) {
		Drawable.initialize(params);

		// 初始化时获取参数
		newX=params[:newX];
		newY=params[:newY];

	}
    function draw(dc){
        dc.setColor(0x330000,Graphics.COLOR_TRANSPARENT);
        dc.drawText(newX,newY,DATEFont,"08/6",Graphics.TEXT_JUSTIFY_LEFT);
    }

}