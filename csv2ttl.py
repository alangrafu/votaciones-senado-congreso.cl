
from rdflib import URIRef
import csv
import sys
import slugify

baseUri = u"http://opendata/congreso.cl/"
with open(sys.argv[1]) as f:
	csv = csv.reader(f, delimiter="\t")
	for row in csv:
		print URIRef(baseUri+u'person/'+slugify.slugify(unicode(row[0].decode('utf-8'))))
