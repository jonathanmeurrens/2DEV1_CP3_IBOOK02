/**
 * Created with IntelliJ IDEA.
 * User: thomasverleye
 * Date: 22/11/12
 * Time: 10:25
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3.model {
import be.devine.cp3.vo.BookVO;
import be.devine.cp3.vo.PageVO;

import flash.events.Event;

import flash.events.EventDispatcher;

public class AppModel extends EventDispatcher{
    //##########
    //Properties
    //##########
    private var _bookVO:BookVO;
    private var _pages:Vector.<PageVO>;

    private var _currentPageIndex:uint;
    private var _currentPage:PageVO;

    //######
    //Events
    //######
    public static const CURRENT_PAGE_CHANGED:String = "CURRENT_PAGE_CHANGED";

    public function AppModel() {
    }

    //#######
    //Methods
    //#######

    //previous & next page

    public function previousPage():void{
        if(hasPrevious)
        {
            currentPage = _pages[currentPageIndex-1];
        }
    }

    public function nextPage():void{
        if(hasNext)
        {
            currentPage = _pages[currentPageIndex+1];
        }
    }

    //has previous & next page

    private function hasPrevious():Boolean{
        var index:int = currentPageIndex;
        return index > 0;
    }

    private function hasNext():Boolean{
        var index:int = currentPageIndex;
        return  (index > -1 && (index + 1) < _pages.length);
    }

    //#################
    //getters & setters
    //#################

    //bookVO

    public function get bookVO():BookVO {
        return _bookVO;
    }

    public function set bookVO(value:BookVO):void {
        _bookVO = value;
    }

    //Pages

    public function get pages():Vector.<PageVO> {
        return _pages;
    }

    public function set pages(value:Vector.<PageVO>):void {
        _pages = value;
    }

    //currentIndex

    public function get currentPageIndex():uint {
        if(_pages && _currentPage)
        {
            return _pages.indexOf(_currentPage);
        }
        return -1;
    }

    public function set currentPageIndex(value:uint):void {
        //De index is manipuleerbaar voor de TOC & Timeline
        if (_currentPageIndex != value && value > -1 && value < _pages.length)
        {
            _currentPageIndex = value;
            currentPage = _pages[_currentPageIndex];
        }
    }

    //currentPage

    public function get currentPage():PageVO {
        return _currentPage;
    }

    public function set currentPage(value:PageVO):void {
        if(_currentPage != value)
        {
            _currentPage = value;
            _currentPageIndex = _pages.indexOf(_currentPage);
            dispatchEvent(new Event(CURRENT_PAGE_CHANGED));
        }
    }
}
}