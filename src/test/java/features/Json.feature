Feature: Json feature testing

Scenario: Json reader parse
 * def jsonObject = 
 
"""
[
{
  "Name" : "Tom",
  "City" : "New york",
  "Age" : "20"
},
{
  "Name" : "Eric",
  "City" : "Ho Chi Minh",
  "Age" : "30"
}
]

"""
 * print jsonObject
 * print jsonObject[0]
  * print jsonObject[1].Name + " " + jsonObject[1].City + " " + jsonObject[1].Age
  
  Scenario:
  * def jsonObject = 
"""
{
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}
"""
 * print jsonObject
 * print jsonObject.glossary.GlossDiv
 
 
 
 
 
 
 