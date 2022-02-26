
# Comparison of Sentiment Tools across Domains

This repository contains R notebook files for:
- preprocessing of corpus data
- performing sentiment analysis 
- evaluation of lexicon performance

Term project for the course "Opinion and Argument Mining" at the Universität Potsdam, winter semester 2021/2022, taught by Prof. Dr. Manfred Stede.

Developed by Friederike Schreiber and Anna-Janina Goecke.

### Data
The data used for this project can be found within the `implementation/datasets` directory.  


### How to run:
We recommend to run the notebooks using RStudio. The following libraries are required: 
*add libraries* `quanteda`,`quanteda.sentiment`,`vader`,`readtext`,`tidyverse`,`tidytext`,
`reshape2`, ...  

To reproduce the project, execute the notebooks in the following order:
#### 1. Corpus Preprocessing


#### 2. Sentiment analysis
This notebook contains the code to load the preprocessed data sets, run lexicon-based sentiment analysis with Afinn, Lexicoder Sentiment Dictionary and VADER on the input data sets and to calculate the coverage of the sentiment lexicons on the corpus data.
The code is well documented and explanations of the specific code cells can be found within the notebook itself. Within the notebook example data frames and example plots are created. To see all results and plots, please check the `implementation/sentiment_data` and `implementation/plots` directory.

#### 3. Evaluation



