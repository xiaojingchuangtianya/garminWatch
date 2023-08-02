using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;

class Temperature extends Ui.Drawable {
	// 定义需要用到的参数
	private var Twidth;
	private var Theight;
	private var posX;
	private var posY;

	function initialize(params) {
		Drawable.initialize(params);
		// 初始化时获取参数
		Twidth=params[:width];
		Theight=params[:height];
		posX=params[:posX];
		posY=params[:posY];
	}

	function draw(dc) {
		// 这个函数应该是将内容绘制到表里的
		// dc.drawLine(0,0,100,100);
		// System.println(dc.getWidth()); 240
		// System.println(dc.getHeight()); 240
		 //这是设置颜色的
		dc.fillRectangle(0,0, 112,40);
		// dc.setClip(10, 0, 112, 52);//左侧点
		// dc.clear();
		
		// 这是图标资源的，底图貌似比较难设置
		dc.setColor(Graphics.COLOR_BLACK,Graphics.COLOR_TRANSPARENT);
		testFont=WatchUi.loadResource(Rez.Fonts.TestFont);
        // icon = {
        //     // Day icon               Night icon                Description
        //     "01d" => "H" /* 61453 */, "01n" => "f" /* 61486 */, // clear sky
        //     "02d" => "G" /* 61452 */, "02n" => "g" /* 61569 */, // few clouds
        //     "03d" => "B" /* 61442 */, "03n" => "h" /* 61574 */, // scattered clouds
        //     "04d" => "I" /* 61459 */, "04n" => "I" /* 61459 */, // broken clouds: day and night use same icon
        //     "09d" => "E" /* 61449 */, "09n" => "d" /* 61481 */, // shower rain
        //     "10d" => "D" /* 61448 */, "10n" => "c" /* 61480 */, // rain
        //     "11d" => "C" /* 61445 */, "11n" => "b" /* 61477 */, // thunderstorm
        //     "13d" => "F" /* 61450 */, "13n" => "e" /* 61482 */, // snow
        //     "50d" => "A" /* 61441 */, "50n" => "a" /* 61475 */, // mist
        // }[result["weatherIcon"]];
        dc.clear();
        // dc.setColor(Graphics.COLOR_DK_GRAY,Graphics.COLOR_DK_GREEN);
        dc.drawText(120, 10, testFont, "01d", Graphics.TEXT_JUSTIFY_CENTER);

		dc.drawText(
			120, 
			12, 
			NormalFont,
			"36°C", 
			Gfx.TEXT_JUSTIFY_RIGHT);
	}
}
