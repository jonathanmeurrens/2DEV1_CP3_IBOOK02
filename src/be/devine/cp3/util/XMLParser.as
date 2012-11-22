/**
 * Created with IntelliJ IDEA.
 * User: Jonathan
 * Date: 22/11/12
 * Time: 11:42
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3.util
{
import be.devine.cp3.util.queue.QueueLoader;
import be.devine.cp3.util.queue.XMLTask;
import be.devine.cp3.util.queue.XMLTask;

import flash.events.Event;

public class XMLParser
{
    private var _queueLoader:QueueLoader;

    public function XMLParser(url:String)
    {
        _queueLoader = new QueueLoader();
        var xmlTask:XMLTask = new XMLTask(url);
        xmlTask.addEventListener(Event.COMPLETE, xmlLoadingDoneHandler);
        _queueLoader.add(new XMLTask(url));
        _queueLoader.start();
    }

    private function xmlLoadingDoneHandler(e:Event):void
    {
        parseXML(XMLTask(e.target).xml);
    }

    protected function parseXML(xml:XML):void
    {

    }
}
}
