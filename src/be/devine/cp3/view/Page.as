/**
 * Created with IntelliJ IDEA.
 * User: Jonathan
 * Date: 26/11/12
 * Time: 17:10
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3.view
{
    import be.devine.cp3.vo.PageVO;

import starling.display.Sprite;

public class Page extends Sprite
    {
        private var _pageVO:PageVO;

        public function Page(pageVO:PageVO)
        {
            _pageVO = pageVO;
        }
    }
}
