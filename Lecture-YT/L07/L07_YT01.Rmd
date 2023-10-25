---
title: "Your Turn : Introduction to Probability"
author: "Your netid, last name, first name here"
date: "`r Sys.Date()`"
output:
  html_document:
    toc: yes
    toc_float: yes
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r, echo = F}
bfcolor <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{\\textbf{%s}}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'><b>%s</b></span>", color, x)
  } else x
}
```

##  Simulation

### **Example:** 

Toss a coin

```{r coin}
coin <- sample(c("H", "T"), 1)
coin
```

```{r coin2}
coin2 <- sample(c("1", "0"), 1)
coin2
```

### Exercise 1:

Toss a coin 10 times

```{r}
(x <- sample(c("H", "T"), 10, replace = TRUE)) #10 coin tosses
```

```{r}
(x2 <- sample(c(1, 0), 10, replace = TRUE)) #10 coin tosses
```
### Exercise 2: 

Tabulate the result of tossing a coin 10 times. 


```{r }
table(x) # How many H vs T
```

```{r }
table(x2) # How many H vs T
```


### Exercise 3:

How many heads were there in your toss of a coin 10 times?

```{r}
x
x2
```

```{r}
(x == "H")
(x2 == 1)

```

```{r}
sum((x == "H")) # How many H
sum(x2)
```

### Exercise 4:

Visually display your toss of a coin 10 times. 

```{r}
barplot(table(x)) # visualize # of heads
```

```{r}
barplot(table(x2)) # visualize # of heads
```

### Exercise 5:

Based on tossing the coin 10 times, what is the chance of getting "H"? Does it agree with what you know as the probability of getting "H" when you toss a fair coin? 


## Simulating probabilities in R
**Example:** Probability of getting a "H" in tossing a fair coin

What happens with 100 coin tosses, 1000 coin tosses? 
```{r}
x<-sample( c("H", "T"), 100, replace = TRUE)
table(x)/100 #Estimated probabilities
```
```{r}
x<-sample( c("H", "T"), 1000, replace = TRUE)
table(x)/1000 # long-run average
```



### Simulation based approach to probability

What is the probability of getting "H" when you toss a fair coin? 

1. Repeat the  process of tossing a fair coin over and over again under identical conditions.
2. For each repetition of the process, note if a "H" was observed.

Probability (or chance) of getting a "H" is the fraction of the time the outcome "H" was observed. 

The probability (or chance) of an outcome is equal to: 
$$ \frac{\text{number of "H"}}{\text{number of repetitons}} $$

```{r}
nreps <- 1000
prob <- rep(0,nreps)
for(i in 1:nreps){
  coin <- sample(c(1, 0),replace = TRUE, i)
  prob[i] <- sum(coin)/i
}
prob[1:10]
prob[990:1000]
plot(1:nreps, prob, type='l')
```

Probability is the long range average number of "H" observed when the coin is tossed repeatedly under identical conditions. 


## Designing a Simulation

Ethan and Adam are gambling against each other. A fair coin is tossed repeatedly. Each
time a head comes up, Ethan wins a \$ from Amy, and each time a tail comes up,
Ethan loses a \$ to Amy. Carry out this experiment 50 times, and estimate the number of times that Ethan is ahead in these 50 tosses. How much has Ethan won or lost?


## 

1. generate 50 tosses of a fair coin

```{r}
x <- sample(c("H", "T") , 50, replace = TRUE )
```

equivalently, from Ethan's perspective

```{r}
x <- sample(c(1, -1) , 50, replace = TRUE )
x
```

##
 Ethan's winnings 
```{r}
x[1] # winning after 1st toss
x[1]+x[2]
x[1]+x[2]+x[3]
```
```{r}
sum <- rep(0,50)
sum[1] <- x[1] #the winnings after the first toss
for (i in 2 :50) {
  sum[i] <- sum[i-1] + x[i] #the winnings at toss i
}
```
##
```{r}
sum
```

```{r}
cumsum(x)
```

##
```{r}
plot(1:50, sum, type = "o", 
     xlab = "Toss number", ylab = "Winnings")
abline( 0 , 0 )
```

## 

overall winning

```{r}
sum[50]
sum(x)
cumsum(x)[50]
```
