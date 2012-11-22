/**
 * Created with IntelliJ IDEA.
 * User: thomasverleye
 * Date: 20/11/12
 * Time: 16:27
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3 {
import be.devine.cp3.model.AppModel;
import be.devine.cp3.util.BookXMLParser;

import flash.display.Sprite;

public class Application extends Sprite
{
    private var _appModel:AppModel;

    public function Application()
    {
        _appModel = new AppModel();

        // start loading the books content as XML and parse it, data stored in appModel
        var bookXMLParser:BookXMLParser = new BookXMLParser(_appModel);
        bookXMLParser.parse("assets/book.xml");
    }
}
}
