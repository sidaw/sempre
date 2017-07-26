#Input paths file called path_descriptions.txt. To Do: reduce lexicon size by running tf-idf or getting unique keywords for each path
import ast 
from collections import defaultdict 
import math

#format lexeme and formula for lexicon, sigWords=True if only wanting to use significant words as lexemes
def formatStrings(formula, lex, sigWords):
	modifiedFormula = formula.encode('utf8')
	modifiedLexeme= lex.strip().encode('utf8') 
	lexiconVals = ""
	lexems = []
	if(sigWords):
	    lexemes = significantWords(modifiedLexeme, formula)
	else:
		lexemes = modifiedLexeme.split()
	for l in lexemes:
	    lexiconVals += "{\"lexeme\": \""+l+"\", \"formula\": \""+modifiedFormula+"\", \"type\": \"PATH\"}\n"
	return lexiconVals

#removes all stop words and words that are substrings of the ignoreString argument                             
def significantWords(stringToParse, ignoreString):
	import re
	from nltk.corpus import stopwords               
	stringToParse = stringToParse.lower()
	significantWords = [re.sub(r"[^A-Za-z ]+", '', word) for word in stringToParse.split() if (word not in stopwords.words('english') and word not in ignoreString.lower())]
	return significantWords 

#create formula based on path
def createFormula(pathArray):
	currFormula = "" 
	if(len(pathArray) == 1): 
		#name needed to avoid "want 2" error in SimpleLexicon read()
		return "(name "+pathArray[0]+")"
	currFormula = "(:s "+pathArray[0]+" "+pathArray[1]+")"
	for i in xrange(2, len(pathArray)): 
		currFormula = "(:s "+currFormula+" "+pathArray[i]+")"
	return currFormula
		

#run tfidf on doc. Tf is term frequency = (term count in doc/ # terms in doc). InvF is log inverse of docs with given term.
#In this case, the path is considered as the "doc" with associating terms. 
def runTfidf(fname):
	outputFile = open(fname, "r")
	docDict = defaultdict(int)
	termDocDict = defaultdict(lambda: defaultdict(int))
	#populate dictionaries
	for line in outputFile: 
		data = ast.literal_eval(line) 
		docDict[data["formula"]] +=1
		termDocDict[data["lexeme"]][data["formula"]]+=1
	print(len(docDict))
	outputFile.seek(0)            
	#calculate tfidf
	tfIdfFile = open("plotting_tfidf.lexicon","w")
	for line in outputFile:
		data = ast.literal_eval(line) 
		tf = 1.0*termDocDict[data["lexeme"]][data["formula"]]/docDict[data["formula"]]
		docsWithTerm = len(termDocDict[data["lexeme"]].keys())
		invF = math.log(1.0*len(docDict.keys())/docsWithTerm)
		print(data["lexeme"])
		print(docsWithTerm) 
		print(tf*invF) 
		#only print line if tfidf value is above 1.0
		if(tf*invF > 1.0):
			tfIdfFile.write(line)
	outputFile.close()
			
#generate plotting lexicon
outputFile = open("plotting.lexicon", "w")    
path_file = "path_descriptions.txt"
file = open(path_file, "r")
for line in file: 
	lineArray = line.split()
	defIndex = lineArray.index("Definition:")
	path = createFormula(lineArray[:defIndex])
	definition = " ".join(lineArray[defIndex+1:])
	output = formatStrings(path, definition, True)  
	outputFile.write(output)  
outputFile.close()
#run tfidf on plotting.lexicon, output will be in plotting_tfidf.lexicon
runTfidf("plotting.lexicon")
	 
	

	
	
	
	
				    

		
	