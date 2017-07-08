#Input paths file called path_descriptions.txt

def format_strings(formula, lex, sig_words):
	modified_formula = formula.encode('utf8')
	modified_lexeme= lex.strip().encode('utf8')
	if(sig_words):
	    lexemes = significant_words(modified_lexeme)
	    lexicon_vals = ""
	    for l in lexemes:
		    lexicon_vals += "{\"lexeme\": \""+l+"\", \"formula\": \"(name "+modified_formula+" PATH)\", \"type\": \"PATH\"}\n"
	    return lexicon_vals
	else:
		lexicon_vals = ""  
		for l in modified_lexeme.split():
		    lexicon_vals += "{\"lexeme\": \""+l+"\", \"formula\": \"(name "+modified_formula+" PATH)\", \"type\": \"PATH\"}\n"
		return lexicon_vals


def significant_words(string_to_parse):
	import re
	from nltk.corpus import stopwords
	string_to_parse = string_to_parse.lower()
	significant_words = [re.sub(r"[^A-Za-z ]+", '', word) for word in string_to_parse.split() if word not in stopwords.words('english')]
	return significant_words



#generate plotting lexicon
output_file = open("plotting.lexicon", "w")    
path_file = "path_descriptions.txt"
file = open(path_file, "r")
for line in file: 
	line_array = line.split()
	def_index = line_array.index("Definition:")
	path = " ".join(line_array[:def_index])
	definition = " ".join(line_array[def_index+1:])
	significant_words_from_definition  = significant_words(definition)
	output = format_strings(path, definition, True)  
	output_file.write(output)
	 
	

	
	
	
	
				    

		
	