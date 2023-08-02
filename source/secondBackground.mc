using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;


// 界面最底部的东西，后续看下要不要加上图片还是只做纯色
class Background extends Ui.Drawable {

	function initialize() {
		Drawable.initialize({ :identifier => "Background" });
	}

	function draw(dc) {
		// Set the background color then call to clear the screen
        backgroundColor= Graphics.COLOR_ORANGE;
		dc.setColor(Gfx.COLOR_TRANSPARENT, backgroundColor);
		dc.clear();
	}
}
