
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
- ParlVote: 
- Twitter:
- Amazon Product Reviews:
- Children's Book Reviews:
- Finance News: 

### How to run:
We recommend running the notebooks using RStudio. The following libraries are required: 
`quanteda`,`quanteda.sentiment`,`vader`,`readtext`,`tidyverse`,`tidytext`,`caret`,`plyr`,`dplyr`,`janitor`,`tm`,`textstem`,`textcat`,`lsa`,`reshape2`

To reproduce the project, execute the notebooks in the following order:
#### 1. Folder Preprocessing
###### Loading Datasets: 
This notebook is used to load the corpus data, apply some light preprocessing, and create subsets of 1000 examples with an equal rating distribution for each corpus. Links to download the corpora can be found in the notebook.

###### Further Preprocessing:
This notebook contains code to make the datasets corresponding to three additional test conditions with including lemmatization and stopwords or one of them. The stopword list we used features also the most frequent neutral words as recognized by the lexica. Therefore, the sentiment results of the base configuration are needed before the additional conditions can be used.

###### Correlation_Parlvote:
This notebook contains a correlation analysis between the party affiliation of a speaker, the party bringing the motion and the sentiment rating. For further explanations see the discussion section of the paper. 

#### 2. Sentiment analysis
This notebook contains the code to load the preprocessed data sets, run lexicon-based sentiment analysis with Afinn, Lexicoder Sentiment Dictionary and VADER on the input data sets and to calculate the coverage of the sentiment lexicons on the corpus data. The idea was to implement the sentiment tools as a black box; therefore, no changes were made for the lexicon and no additional rules, or scores were implemented. 
The code is well documented, and explanations of the specific code cells can be found within the notebook itself. Within the notebook example data frames and example plots are created. To see all results and plots, please check the `implementation/sentiment_data` and `implementation/plots` directory.

#### 3. Folder Evaluation:
This folder contains notebooks used for various evaluation tasks. All results can also be found in the XXX folder.

###### Binary Evaluation & Neutral Evaluation:
These notebooks contain code to calculate the accuracy, F1 score and confusion matrix of the performance of the lexica on the corpora. Also, code to perform ANOVA and Tukey Tests is included. The Neutral Evaluation notebook features code to determine a threshold to set neutral labels. 
###### Similarity:
This notebook computes the cosine similarity between the sentiment ratings of the examples by the lexica. It also features code to extract the most similar and dissimilarly rated examples. 

### References

