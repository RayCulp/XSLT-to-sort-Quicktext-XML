# XSLT-to-sort-Quicktext-XML
An XSLT file to sort Quicktext XML 

How to use this XSLT file on Windows
1. Download msxsl.exe  https://www.microsoft.com/en-us/download/details.aspx?id=21714
2. Export the Quicktext templates you want to sort as "input.xml"
3. Download sort.xsl and sort.bat from this repository
4. Place all files (sort.xslt, sort.bat, msxsl.exe and input.xml) in the same folder
5. Run sort.bat. Alternatively, run "msxsl.exe input.xml sort.xslt -o output.xml" from a command prompt. This creates a new file called output.xml
6. Delete the unsorted templates from Quicktext to avoid having duplicates after the import process.
7. Import the output.xml file into Quicktext
