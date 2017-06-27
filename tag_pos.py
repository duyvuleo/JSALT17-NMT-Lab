import sys
import nltk

for line in sys.stdin:
	line = line.strip()
	tokens = nltk.word_tokenize(line)
	pos_tags = nltk.pos_tag(tokens)
	#print(pos_tags)
	print(" ".join([word_pos[1] for word_pos in pos_tags]))

