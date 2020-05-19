using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace Xslt_study
{
    class Program
    {
        static void Main(string[] args)
        {
            var myXmlFile = "Data\\books.xml";
            var myStyleSheet = "Data\\table_choose.xslt";
            var resultHtml = "Data\\result.html";
            XPathDocument myXPathDoc = new XPathDocument(myXmlFile);
            XslCompiledTransform myXslTrans = new XslCompiledTransform();
            myXslTrans.Load(myStyleSheet);
            XmlTextWriter myWriter = new XmlTextWriter(resultHtml, null);
            myXslTrans.Transform(myXPathDoc, null, myWriter);
        }
    }
}
