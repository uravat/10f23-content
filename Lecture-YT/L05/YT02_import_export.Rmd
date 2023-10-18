---
title: "Your Turn : Importing and exporting data"
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

```{r echo=FALSE, message = FALSE}
library(tidyverse)
#data("starwars")
```


## Importing and exporting data

The rest of the work can be done in the console or run from this `.Rmd` document.

### Keep specified columns using `subset`

Keep only name, height, mass, gender from  `starwars` complete cases(remove `NA`s)

```{r subset1}
df_1 <- na.omit(subset(starwars, select = c(name, height, mass, gender)))
names(df_1)
```

Next, set working directory to source file location. This is so that we know where files will be saved. 

```{r wd, eval = FALSE}
getwd() # gets the working directory where files will be saved
```
```{r export, eval = FALSE}
write.csv(df_1, "./data/df_1.csv" )
```

### Exercise 1: 

Remove all columns except name, height, mass, gender from complete cases of `starwars` and save the new dataframe to a file named df_2

```{r export2, eval = FALSE}
#-your-code-here
```

Go to your working directory and make sure you find your file named `df_2.csv` in the directory you saved it. Ask for help if you don't know where your file went. 

### Exercise 2:

Import the saved dataframe and inspect

```{r import, eval = FALSE}
df_1_new <- read.csv("./data/df_1.csv")
df_1_new
```


