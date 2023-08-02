using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;

class HeartRate extends Ui.Drawable {
	private var Hwidth;
	private var Hheight;
	private var posX;
	private var posY;

		function initialize(params) {
			Drawable.initialize(params);
			// 初始化时获取参数
			Hwidth=params[:width];
			Hheight=params[:height];
			posX=params[:posX];
			posY=params[:posY];
	}


	function draw(dc) {
		dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLUE);
		dc.drawText(
			180,                      // gets the width of the device and divides by 2
			0,                     // gets the height of the device and divides by 2
			Graphics.FONT_LARGE,                    // sets the font size
			"heartRate",                          // the String to display
			Graphics.TEXT_JUSTIFY_CENTER            // sets the justification for the text
				);
	}
}
