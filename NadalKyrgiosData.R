# Assuming you have the 'xml2' package installed; if not, you should install it first:
# install.packages("xml2")
library(xml2)

# Read the XML file
NadKyrData <- read_xml("/Users/seanmccrone/Desktop/Rafael Nadal vs Nick Kyrgios_1.xml")

# Use xml_find_all() to find nodes of interest, for example, all nodes named 'item'
items <- xml_find_all(NadKyrData, "//item")

# Iterate over items and extract the text content
for(item in items) {
  print(xml_text(item))
}

# If you want to extract a specific attribute from the items
for(item in items) {
  print(xml_attr(item, "attribute_name"))
}
