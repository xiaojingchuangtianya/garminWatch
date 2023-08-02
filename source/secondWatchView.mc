import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

var NormalFont;//默认常规样式
var backgroundColor;//声明背景颜色

class secondWatchView extends WatchUi.WatchFace {
    // 10°以下寒冷，蓝色调
    // 10-18°，正常温度，蓝路
    // 12-25°，偏高温，黄色
    // 25°上，红色警告
    var temperature=[10,18,25];
    //静息心率，轻松跑，马拉松心率，乳酸门槛跑，间歇跑（暂时按自己的区间定）
    var heartRate=[65,78,130,150,180];

    private var mDrawables={};//一个存储所有可修改组件的列表




    function initialize() {
        WatchFace.initialize();
    }

    //此处加载资源
    function onLayout(dc as Dc) as Void {
        NormalFont=WatchUi.loadResource(Rez.Fonts.NormalFont);//直接做样式更新
        setLayout(Rez.Layouts.WatchFace(dc));
        staticDrawables();//将界面静态的东西显示出来
    }

    function staticDrawables(){
        // 这里做所有界面的加载
        mDrawables[:TemperatureDraw] = View.findDrawableById("TemperatureDraw");
		mDrawables[:HeartRateDraw] = View.findDrawableById("HeartRateDraw");
        mDrawables[:TimeShowDraw] = View.findDrawableById("TimeShowDraw");
		// mDrawables[:RightGoalMeter] = View.findDrawableById("DateFieldDraw");
    }
    // 电池的剩余电量显示
    function BatteryPercent(dc,x,y,width,height){

    }
    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Get and show the current time
        var clockTime = System.getClockTime();
        var timeString = Lang.format("$1$:$2$:$3$", [clockTime.hour, clockTime.min.format("%02d"),clockTime.sec]);
        var view = View.findDrawableById("TimeLabel") as Text;
        view.setText(timeString);

        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    // The user has just looked at their watch. Timers and animations may be started here.
    function onExitSleep() as Void {
    }

    // Terminate any active timers and prepare for slow updates.
    function onEnterSleep() as Void {
    }


// // 更新当前默认样式
//     function updateNormalFont(){   
//         // System.println(Rez.Fonts.NormalFont);
        
//     }

}
