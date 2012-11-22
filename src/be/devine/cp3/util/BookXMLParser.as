/**
 * Created with IntelliJ IDEA.
 * User: Jonathan
 * Date: 22/11/12
 * Time: 11:42
 * To change this template use File | Settings | File Templates.
 */
package be.devine.cp3.util
{
public class BookXMLParser extends XMLParser
{
    public function BookXMLParser()
    {
        super("assets/books.xml");
    }

    override protected function parseXML(xml:XML):void
    {
        trace(xml);
    }

}
}
