using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;

class TimeShow extends Ui.Drawable {
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
		// dc.clear();
		dc.fillRectangle(0,38, 240,40);
		// dc.setClip(10, 0, 112, 52);//左侧点
		// dc.clear();
		dc.setColor(Graphics.COLOR_DK_GRAY,Graphics.COLOR_TRANSPARENT);

		dc.drawText(
			16, 
			40, 
			Graphics.FONT_LARGE,
			"一月一", 
			Gfx.TEXT_JUSTIFY_LEFT);	
	}
}
