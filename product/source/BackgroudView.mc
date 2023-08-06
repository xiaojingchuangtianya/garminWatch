using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;
using Toybox.System;

class BackgroudView extends Ui.Drawable{
    var isShowBackground=false;
    //加载一下资源
    var Backgroundimage=WatchUi.loadResource(Rez.Drawables.BackgroundImg);

    function initialize(){
        Drawable.initialize({:identifier => "BackgroudView"});
    }

    function draw(dc){
        //强制性需要循环加载才会保持在这个界面

        dc.drawBitmap(0, 0,Backgroundimage);

    }


}