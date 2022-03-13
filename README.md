
# Comparison of Sentiment Tools across Domains
Term project for the course "Mining Opinions and Arguments" at the Universität Potsdam, winter semester 2021/2022, taught by Prof. Dr. Manfred Stede. 

Developed by Friederike Schreiber (schreiber6@uni-potsdam.de) and Anna-Janina Goecke (goecke@uni-potsdam.de).

**Project Description**: This project aims to compare and evaluate different sentiment tools (Afinn, VADER, Lexicoder Sentiment Dictionary) to data sets from various domains (political speeches, twitter, amazon product reviews, book reviews, finance headlines).

This repository contains R notebook files for:
- preprocessing of corpus data
- performing sentiment analysis 
- evaluation of lexicon performance

Furthermore, you can find the final paper, plots, and result tables within this repository. 

### Data
The data used for this project can be found within the `implementation/datasets` directory. To compare the performance of the sentiment tools, we used the following datasets:
- ParlVote: https://data.mendeley.com/datasets/czjfwgs9tm/1
- Twitter: https://www.kaggle.com/crowdflower/first-gop-debate-twitter-sentiment
- Amazon Product Reviews: https://cseweb.ucsd.edu/~jmcauley/datasets.html#amazon_reviews
- Children's Book Reviews: https://sites.google.com/eng.ucsd.edu/ucsdbookgraph/home
- Finance News: https://www.kaggle.com/ankurzing/sentiment-analysis-for-financial-news

### Results
This folder contains all results obtained through our evaluation and the rating scores from the lexica. 

- coverage: These files contain tables showing the coverage of.... They can be obtained running the sentiment_tools notebook.
- results test configurations: The folder contains the accuracy and F1 scores of the different test conditions we tried. For further details about the test conditions please check section 6.3 of our report.
- sentiment_scores: This folder has files containing the results of the lexica for the different test conditions. These results can be obtained by running the sentiment_tools script.
- Similarity Comparisons Table: These csv files hold tables which show the examples of each corpus sorted by how similarly they were rated by the lexicons. They include the individual scores given by the lexicons and a similarity rating computed through absolute distance between the ratings. These results can be replicated through the notebook Similarity found in the Evaluation folder.
- word_counts: This folder contains lists of the most common positive, negative, and neutral words for each corpus and each lexicon. These results can be obtained by running the sentiment_tools script.

### How to run:
We recommend running the notebooks using RStudio. The following libraries are required: 
`quanteda`,`quanteda.sentiment`,`vader`,`readtext`,`tidyverse`,`tidytext`,`caret`,`plyr`,`dplyr`,`janitor`,`tm`,`textstem`,`textcat`,`lsa`,`reshape2`

To reproduce the project, execute the notebooks in the following order:
#### 1. Folder Preprocessing
###### Loading Datasets: 
This notebook is used to load the corpus data, apply some light preprocessing, and create subsets of 1000 examples with an equal rating distribution for each corpus. Links to download the corpora can be found in the notebook.

###### Further Preprocessing:
This notebook contains code to make the datasets corresponding to three additional test conditions with including lemmatization and stop words or one of them. The stop word list we used features also the most frequent neutral words as recognized by the lexica. Therefore, the sentiment results of the base configuration are needed before the additional conditions can be used.

###### Correlation_Parlvote:
This notebook contains a correlation analysis between the party affiliation of a speaker, the party bringing the motion and the sentiment rating. For further details see the discussion section of our paper. 

#### 2. Sentiment analysis
###### sentiment_tools:
This notebook contains the code to load the preprocessed data sets, run lexicon-based sentiment analysis with Afinn, Lexicoder Sentiment Dictionary and VADER on the input data sets and to calculate the coverage of the sentiment lexicons on the corpus data. The idea was to implement the sentiment tools as a black box; therefore, no changes were made for the lexicon and no additional rules, or scores were implemented. 
The code is documented, i.e., explanations of the specific code cells can be found within the notebook itself. Within the notebook example data frames and example plots are created. To see all results and plots, please check the `implementation/results/sentiment_data` and `implementation/plots` directory.

#### 3. Folder Evaluation:
This folder contains notebooks used for various evaluation tasks.

###### Binary Evaluation & Neutral Evaluation:
These notebooks contain code to calculate the accuracy, F1 score and confusion matrix of the performance of the lexica on the corpora. Also, code to perform ANOVA and Tukey Tests is included. The Neutral Evaluation notebook features code to determine a threshold to set neutral labels. 
###### Similarity:
This notebook computes the cosine similarity between the sentiment ratings of the examples by the lexica. It also features code to extract the most similar and dissimilarly rated examples. 

### References

