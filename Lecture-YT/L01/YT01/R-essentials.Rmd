---
title: "Your Turn : R essentials"
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

# 1. Console vs .Rmd
Compared to working in the R console, .Rmd allows you to rerun (reproduce) code much more effortlessly


`r bfcolor("Exercise 1:", "blue")` **R as a calculator:** use any mathematical operators (+, -, /, and *) to create an expression and make sure it works as expected. _What is `2+2`, `100*3`, `100/10`, `sqrt(25)`?_

`r bfcolor("Solutions:", "blue")`


`r bfcolor("Exercise 2:", "blue")` **Object Assignment:** Assign the value of your mathematical operation to the variable `y`. Note the change in the environment pane. 

`r bfcolor("Solutions:", "blue")`

`r bfcolor("Exercise 3:", "blue")` **Load** the `palmerpenguins` **package** so that we have access to all functions and data in this package. 

`r bfcolor("Solutions:", "blue")`

`r bfcolor("Exercise 3a:", "blue")` Look up the documentation  for  `palmerpenguins` **package** 

`r bfcolor("Solutions:", "blue")`

`r bfcolor("Exercise 3b:", "blue")` Follow the useful links section to read the documentation for the  `palmerpenguins` **package**. Does the documentation help you find how many datasets are in this package? Write down the `R` command that can help  you get this information. 

`r bfcolor("Solutions:", "blue")`

`r bfcolor("Exercise 4:", "blue")` **View** the `penguins` **dataset**

`r bfcolor("Solutions:", "blue")`

`r bfcolor("Exercise 5:", "blue")` Take a look at the `flipper_length` variable

`r bfcolor("Solutions:", "blue")`


`r bfcolor("Exercise 6:", "blue")` **Find the average** `flipper_length`

`r bfcolor("Solutions:", "blue")`


`r bfcolor("Exercise 7:", "blue")` **Get help** on the mean **function**

`r bfcolor("Solutions:", "blue")`


# 2. R essentials: Packages


**OYO:**

`r bfcolor("Exercise: ", "blue")` Check if the package `datasets` is installed?

`r bfcolor("Exercise: ", "blue")` Check if the package `nycflights13` is loaded. If not loaded, load it.



## 3. R essentials : Defining, assigning and accessing objects

```{r, eval=FALSE}
2sq <- 2^2 # note the change in the environment

sq2
```
```{r}
y <- 3
# use previously defined object/variable y 
#and assign it's cube to the object y_cube
y_cube <- y^3 

y_cube
```

```{r error = TRUE}
Y_CUBE
```


**Take away: ** R is case sensitive, Pay attention to naming conventions




## 4. R essentials : More flexibility in printing objects

```{r}
?print
```



```{r echo=TRUE, eval = TRUE, error = TRUE}
# without print function:
# R prints values using default options
y_cube
print(y_cube)
```


```{r echo=TRUE, eval = TRUE}
# Printing quoted text
welcome_msg <- "Welcome to PSTAT10"
welcome_msg
# Printing using print function
print(welcome_msg2 <- "Welcome to PSTAT10 with Dr. Ravat")
```
```{r echo=TRUE, eval = TRUE}
# quote = FALSE for no quotes
print(welcome_msg, quote = FALSE)
```

`r bfcolor("OYO: " ,"orange")`
Check out help page for `?print` for more options and examples


## 5. Environments

```{r}

```






