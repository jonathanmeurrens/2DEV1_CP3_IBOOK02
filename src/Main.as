package {

import flash.display.DisplayObject;
import flash.display.MovieClip;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.events.ProgressEvent;
import flash.utils.getDefinitionByName;

public class Main extends MovieClip {

    private var app:DisplayObject;

    public function Main() {

        //Align and Scale

        stage.align = StageAlign.TOP_LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;

        //Preloader instellen

        if (loaderInfo.bytesLoaded >= loaderInfo.bytesTotal) { startApplication();
        } else { loaderInfo.addEventListener(ProgressEvent.PROGRESS,
                progressHandler);
            loaderInfo.addEventListener(Event.COMPLETE, completeHandler)
        }
    }

    //Handlers
    private function progressHandler(event:ProgressEvent):void
    {
        trace(event.bytesLoaded, event.bytesTotal);
    }

    private function completeHandler(event:Event):void {
        startApplication();
    }


    //Preloader ophalen
    private function startApplication():void
    {
        this.gotoAndStop("start");
        var appClass:Class = getDefinitionByName("be.devine.cp3.Application") as Class; app = new appClass();
        addChild(app);
    }
}
}
