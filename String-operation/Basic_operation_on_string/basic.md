📢 Introduction

In Bash, strings are one of the most commonly used types of data.
You can create, manipulate, and analyze strings using simple syntax.
String operations are essential for text processing, scripting automation, and building dynamic scripts.
🖥️ Declaring Strings

You can declare strings in Bash with or without quotes:

name=James
greeting="Hello, World!"

✅ Quotes are needed only if the string has spaces or special characters.
📦 Basic String Operations in Bash
Operation	Example	Description
String Assignment	str="Hello"	Assign a string to a variable
String Concatenation	str2="$str World"	Combine strings
String Length	${#str}	Get the length of a string
String Substring Extraction	${str:position:length}	Extract part of a string
String Replacement	${str/old/new}	Replace part of a string
String Comparison	[[ "$str1" == "$str2" ]]	Compare two strings
String Uppercase	${str^^}	Convert to uppercase
String Lowercase	${str,,}	Convert to lowercase
Check if String is Empty	[ -z "$str" ]	Test if string is empty
Check if String is Non-Empty