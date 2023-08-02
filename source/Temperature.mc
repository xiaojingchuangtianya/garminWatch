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
		dc.setColor(Graphics.COLOR_BLACK,Graphics.COLOR_DK_GREEN);
		dc.drawText(
			120, 
			0, 
			Graphics.FONT_TINY,
			"  36°C ", 
			Gfx.TEXT_JUSTIFY_RIGHT);
	}
}
