Comparison & Commonality Word Cloud
========================================================
author: Rajesh S 
date: 9/27/2015

The Idea
========================================================

I was listening to the recent Presidential debate and thought it would be interesting to compare the speech transcript of two popular presidential candiates and see what they spoke about in general and what were some of the common topics that they spoke about.

Thats when I decided to work on this project of comparing two texts and generating a word cloud that can give me more insights into the speech.

Start by Loading
  

```r
library(tm)
library(wordcloud)
```

The R Code
========================================================

The below explains the method that was use in the shiny app for comparing any two texts to find commonality and also compare the two texts.


```r
tmpText = data.frame(c("course and meets its Love"," trusted each Love"))
ds = DataframeSource(tmpText)
corp = Corpus(ds)
corp = tm_map(corp,removePunctuation)
corp = tm_map(corp,tolower)
corp = tm_map(corp,removeNumbers)
corp = tm_map(corp, removeWords, stopwords("english"))
corp = tm_map(corp, PlainTextDocument)
term.matrix <- TermDocumentMatrix(corp)
term.matrix <- as.matrix(term.matrix)
colnames(term.matrix) <- c("Text1","Text2")
```

The Word Cloud
========================================================

The Left side graph shows us the comparison cloud and the right side graph shows us the commonality cloud. Below shown are sample clouds

```r
par(mfrow=c(1,2))
comparison.cloud(term.matrix,max.words=10)
commonality.cloud(term.matrix,max.words=10)
```

![plot of chunk unnamed-chunk-3](WordCloud-figure/unnamed-chunk-3-1.png) 

Development
========================================================

Using the shiny app compare andy two songs or speeches or articles ..etc to find out commonality and comparisons between the texts.
https://wordcloudcousera0925.shinyapps.io/Coursera_DevelopingDataProducts is the app!


Thank you!!
========================================================

I hope this helps you now and in the future to compare any texts and find interesting patterns.

I am hoping to expand on this by adding more features and functionality to better server the needs of users.

Please keep watching for new features in the future!!!
