/**
 * Created with IntelliJ IDEA.
 * User: Jonathan
 * Date: 25/09/12
 * Time: 19:34
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3.util.queue
{
import flash.display.Loader;
import flash.display.Sprite;
import flash.events.Event;
import flash.net.URLRequest;

public class ImageTask extends Sprite implements iTask
    {
        private var _image:Loader;
        private var _url:String;

        public function ImageTask(url:String)
        {
            _image = new Loader();
            _image.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
            _url = url;
        }

        public function start():void
        {
            var request = new URLRequest(_url);
            _image.load(request);
        }

        public function completeHandler(e:Event):void
        {
            dispatchEvent(new Event(Event.COMPLETE));
            addChild(_image);
        }
    }
}
