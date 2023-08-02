using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;
using Toybox.Graphics;

var screenShape;
var offscreenBuffer;
var dateBuffer;
var testFont;


// 界面最底部的东西，后续看下要不要加上图片还是只做纯色
class Background extends Ui.Drawable {

	function initialize() {
		Drawable.initialize({ :identifier => "Background" });
	}

	function draw(dc) {
		// Set the background color then call to clear the screen
        backgroundColor= Graphics.COLOR_ORANGE;
		testFont=Ui.loadResource(Rez.Fonts.TestFont);
		offscreenBuffer =new Graphics.BufferedBitmap(240,240,testFont);
		// dc.drawOffsetBitmap
		dc.drawBitmap(0,0,offscreenBuffer);
		dc.setColor(Gfx.COLOR_TRANSPARENT, backgroundColor);
		dc.clear();
	}
}
