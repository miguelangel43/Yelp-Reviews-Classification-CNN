# Intelligent Systems: Yelp Reviews Classifier

This document corresponds to the NLP assignment of the course "Intelligent Systems" I took in the winter semester 2021/2022 as part of the Masters in Data Science at Universidad Politécnica de Madrid.

The objective is to try to predict the star rating a user gave to a establishment based on a written review.

I processed the text data using Python 3 and its _nltk_ package. This consisted in tokenization, removal of stopwords, lemmatization and stemming.
1. Tokenization: I used nltk’s RegexpTokenizer and also removed punctuation and transformed all the text to low caps.
2. Stopwords: I removed nltk’s English stopwords. In this step, I also only took the first 20 words of each review because of memory issues.
3. Lemmatization: I used nltk’s and WordNet’s lemmatizer. 4. Stemming: I used nltk’s PorterStemmer.

I trained a CNN with learning rate of 0.0005 on the first 20,000 reviews and only the first 20 words (without stopwords) of every review. I tested it on 200 unseen reviews and got an accuracy of 38%, which almost doubles the accuracy of a random guess.

To reproduce the same results shown in the report, run _NLP_Assignment.ipynb_ (preferably on Google Colab) with the file _yelp_20200.csv_ in the same directory.

Miguel Angel Garcia-Gutierrez Espina
No. Matr.: 21A355
