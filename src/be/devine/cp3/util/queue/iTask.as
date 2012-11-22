/**
 * Created with IntelliJ IDEA.
 * User: Jonathan
 * Date: 23/10/12
 * Time: 13:57
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3.util.queue
{
import flash.events.Event;

public interface iTask
    {
        function start():void;
        function completeHandler(e:Event):void
    }
}
