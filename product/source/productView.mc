import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.Sensor;
var DATEFont;

class productView extends WatchUi.WatchFace {
    //一个存储所有可修改组件的列表 
    private var mDrawables={};
    var Backgroundimage=WatchUi.loadResource(Rez.Drawables.BackgroundImg);


    function initialize() {
        WatchFace.initialize();
        
        // Sensor.setEnabledSensors([Sensor.SENSOR_HEARTRATE]);
        // Sensor.enableSensorEvents(method(:onHeartRate));
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        DATEFont=WatchUi.loadResource(Rez.Fonts.DATEFont);
        setLayout(Rez.Layouts.WatchFace(dc));
        mDrawables[:TemperatureDraw] = View.findDrawableById("TemperatureDraw");
        mDrawables[:daetNew] = View.findDrawableById("dateNew");
        mDrawables[:dateOld] = View.findDrawableById("dateOld");
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
        var timeString = Lang.format("$1$:$2$", [clockTime.hour, clockTime.min.format("%02d")]);
        var view = View.findDrawableById("TimeLabel") as Text;
        view.setFont(DATEFont);
        view.setText(timeString);
        //将心率作为一个折线图来进行展示
        showHeartRate();

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


    function onHeartRate(sensorInfo as Sensor.Info) as Void {
        System.println( "Heart Rate: " + sensorInfo.heartRate );
    }
    function showHeartRate(){
        
    }

    //温度传感器监听得到的信息,这个貌似不支持
    // function onTeperature( sensorInfo as Sensor.Info ) as Void{
    //     System.println(sensorInfo.temperature);

    // }
//     function onTeperature(sensorInfo as Sensor.Info) as Void {
//     System.println( "Heart Rate: " + sensorInfo.heartRate );
// }

}
