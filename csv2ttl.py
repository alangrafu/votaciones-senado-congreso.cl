from rdflib import URIRef, Graph, Literal, BNode, XSD, Namespace, RDF
import csv
import sys
import slugify
import datetime

baseUri = u"http://opendata.congreso.cl/"

#Predicates
votedInSession = URIRef(baseUri+"votedInSession")
inSession = URIRef(baseUri+"session")
fecha = URIRef(baseUri+"date")
voted = URIRef(baseUri+"voted")
CONGRESO = Namespace(baseUri)
DCTERMS = Namespace('http://purl.org/dc/terms/')
RDFS = Namespace('http://purl.org/dc/terms/')
FOAF = Namespace('http://xmlns.com/foaf/0.1/')
#Session
session = None
sessionId = None
g = Graph()


voteFile = "votes_%s.xml.csv" % sys.argv[1]
sessionFile = "session_%s.xml.csv" % sys.argv[1]


with open(sessionFile) as f:
	sessioncsv = csv.reader(f, delimiter="\t")
        sessioncsv.next()
	for row in sessioncsv:
		if row[0] == '':
			exit(0)
		sessionId = slugify.slugify(unicode(row[0].decode('utf-8')))
		session = URIRef(baseUri+'session/'+slugify.slugify(unicode(row[0].decode('utf-8')))+'/'+slugify.slugify(unicode(row[1].decode('utf-8')))+'/'+sys.argv[1])
		date = datetime.datetime.strptime(row[1], "%d/%m/%Y").strftime("%Y-%m-%d")
		g.add((session, DCTERMS['date'], Literal(date, datatype=XSD.date)))
		g.add((session, DCTERMS['identifier'], Literal(row[0])))
		g.add((session, DCTERMS['description'], Literal(row[2])))
		if row[3] !=  '':
			g.add((session, CONGRESO['si'], Literal(row[3], datatype=XSD.integer)))
		if row[4] !=  '':
			g.add((session, CONGRESO['no'], Literal(row[4], datatype=XSD.integer)))
		if row[5] !=  '':
			g.add((session, CONGRESO['abstencion'], Literal(row[5], datatype=XSD.integer)))
		if row[6] !=  '':
			g.add((session, CONGRESO['pareo'], Literal(row[6], datatype=XSD.integer)))

with open(voteFile) as f:
	csv = csv.reader(f, delimiter="\t")
	for row in csv:
		personName = slugify.slugify(unicode(row[0].decode('utf-8')))
		person = URIRef(baseUri+u'person/'+personName)
		vote = Literal(row[1])
		blank = URIRef(baseUri+u'vote/'+sessionId+u"/"+personName+'/'+slugify.slugify(unicode(row[1].decode('utf-8'))))
		g.add((person, votedInSession, blank))
		g.add((person, FOAF['name'], Literal(personName)))
		g.add((person, RDF['type'], FOAF['Person']))
		g.add((blank, voted, vote))
		g.add((blank, inSession, session))
print g.serialize(format='n3')
