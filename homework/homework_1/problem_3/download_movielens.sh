#!/bin/bash
#
# downloads movielens rating data
#
# see http://grouplens.org/datasets/movielens/ for more info
#

url=http://files.grouplens.org/datasets/movielens/ml-10m.zip

# download ratings zip file
[ -f movielens_10M.zip ] || curl -o movielens_10M.zip $url

# uncompress zip file
[ -f ratings.dat ] || unzip movielens_10M.zip
