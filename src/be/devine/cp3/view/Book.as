/**
 * Created with IntelliJ IDEA.
 * User: Jonathan
 * Date: 26/11/12
 * Time: 17:29
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3.view
{
import be.devine.cp3.model.AppModel;
import be.devine.cp3.vo.BookVO;
import be.devine.cp3.vo.PageVO;

import flash.events.Event;

import starling.display.Sprite;

public class Book extends Sprite
    {
        private var _appModel:AppModel;

        public function Book()
        {
            _appModel = AppModel.getInstance();
            _appModel.addEventListener(AppModel.BOOK_CHANGED, pagesBookChangedHandler);
        }

        private function pagesBookChangedHandler(e:Event):void
        {
            for each(var pageVO:PageVO in _appModel.bookVO.pages)
            {
                trace(pageVO.title);
            }
        }
    }
}
