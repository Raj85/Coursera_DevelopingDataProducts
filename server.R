library(tm)
library(wordcloud)


shinyServer(function(input, output) {
  
  output$cloud <- renderPlot({
    input$submit
    # read input and pre preprocessing
    tmpText = data.frame(c(input$text1,input$text2))
    ds = DataframeSource(tmpText)
    corp = Corpus(ds)
    corp = tm_map(corp,removePunctuation)
    corp = tm_map(corp,tolower)
    corp = tm_map(corp,removeNumbers)
    corp = tm_map(corp, removeWords, stopwords("english"))
    corp = tm_map(corp, PlainTextDocument)
    term.matrix <- TermDocumentMatrix(corp)
    term.matrix <- as.matrix(term.matrix)
    colnames(term.matrix) <- c("1st Text","2nd Text")
    par(mfrow=c(2,1))
    set.seed(103)
    comparison.cloud(term.matrix,max.words=Inf,random.order=FALSE, colors=brewer.pal(8,"Dark2"))
    set.seed(786)
    commonality.cloud(term.matrix,max.words=Inf,random.order=FALSE)
    })
  
})


