Here’s a **concise README** you can include in your GitHub repo for this assignment:

---

# Programming Assignment 2: Lexical Scoping in R

## Overview

This repository contains the solution for the **Coursera R Programming Assignment 2**, which demonstrates **caching potentially time-consuming computations** in R using **lexical scoping**.

The assignment focuses on creating a **special matrix object** that can cache its inverse, avoiding repeated costly computations.

---

## Files

* `cachematrix.R` — contains two functions:

  1. `makeCacheMatrix`: Creates a special matrix object that can cache its inverse.
  2. `cacheSolve`: Computes the inverse of the matrix. If the inverse has already been computed, it retrieves the cached value.

---

## Usage

```r
# Load the R script
source("cachematrix.R")

# Create a special matrix
my_matrix <- makeCacheMatrix(matrix(c(2,1,1,2), 2, 2))

# Compute the inverse (first time: computes)
cacheSolve(my_matrix)

# Retrieve cached inverse (second time: cached)
cacheSolve(my_matrix)
```

**Expected behavior:** The first call calculates the inverse. The second call displays the message `"getting cached data"` and returns the cached inverse.

---

## Notes

* This implementation assumes that all matrices supplied are **square and invertible**.
* The caching mechanism improves efficiency for repeated inverse calculations on the same matrix.

