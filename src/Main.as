package {

import be.devine.cp3.Application;

import flash.display.DisplayObject;

import flash.display.MovieClip;
import flash.display.StageAlign;
import flash.display.StageScaleMode;

import starling.core.Starling;

public class Main extends MovieClip {

    private var _starling:Starling;

    public function Main() {

        //Align and Scale

        stage.align = StageAlign.TOP_LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;

        //starling instellen
        _starling = new Starling(Application,stage);
        _starling.start();

    }

}
}
