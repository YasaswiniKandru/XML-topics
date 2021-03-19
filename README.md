# XML-topics
<mark>mo.xml:</mark>

The mo.xml is a mail order xml document that has the <mo> element at the root and contains four sub-elements: <customers>, <employees>, <parts>, and <orders> in sequence.

The <customers> element contains zero or more <customer> sub-elements and the <customer> element contains one attribute, cno, whose value is a 4-digit integer between 1000 and 
9999, and five sub-elements: <cname> of type string, <street> of type string, <city> of type string, <zip> whose value is either a 5-digit number or a 5-digit number followed by a 
“-“ followed by a 4-digit number, and <phone> whose value is a 3-digit area code followed by a “-“ followed by a 3-digit exchange code, followed by a “-“ and followed by a 4-digit 
number.

The <employees> element contains zero or more <employee> sub-elements and the <employee> element contains one attribute, eno, whose value is a 4-digit integer between 1000 and 
9999, and four sub-elements: <ename> of type string, <city> of type string, <zip> whose value is either a 5-digit number or a 5-digit number followed by a “-“ followed by a 4-
digit number, and <hdate> of type date.

The <parts> element contains zero or more <part> sub-elements and the <part> element contains one attribute, pno, whose value is a 5-digit integer between 10000 and 99999, and 
four sub-elements: <pname> of type string, <qoh> of type positive integer, <price> of type positive decimal with two fractional digits, and <level> of type positive integer.

The <orders> element contains zero or more <order> sub-elements and the <order> element contains three attributes, ono, whose value is a 4-digit integer between 1000 and 9999, 
takenBy whose value is the same type as an employee number, and customer whose value is the same type as a customer number, and the following sub-elements: <receivedDate> of type 
date, an optional <shippedDate> of type date, and <items> which is a repeating group (one or more) of <item> elements. The <item> element contains two sub-elements: <partNumber> 
whose value is the same type as a part number and <quantity> of type positive integer.
 
mo.xsd:

mo.xsd is a XML Schema specification for the mail order document and validate several instance documents against the schema.

form.xml:

form.xml is a data input form consists of one or more form elements that is capable of accepting input from a user. We shall consider 7 types of form elements: textbox, submit, 
reset, check box, radio buttons, select list, and multiple select list. Each of these form elements except for submit and reset has a datatype (integer, decimal, or string) 
associated with it. If a datatype is not provided, string would be assumed as the default data type. If a data input form contains at least one multiselect form element or a check 
box group of two or more check boxes, one or more of the remaining (single valued) form elements must be classified as key elements.

form.xsl:

XSL program to transform a data input form into HTML that renders the data input form.

Xquery Queries:

This folder contains two different xml files and corresponding queries for retrieving some insights.
