# let's Preprocess the data first. The given code is pretty much a data preprocessing template for most data sets 

# Step 1: Importing the dataset
dataset = read.csv('Data.csv') #replace 'Data.csv' with a the name of your csv file. Also, set working directory first. 

# Step 2: Let's split the dataset into the Training set and Test set
install.packages('caTools') #install 'caTools' package if you haven't already. This line of code is redundant if you have this package already installed in your R studio 
library(caTools) #code to activate caTools package. You can check if the package is already active in 'packages' library
set.seed(123)
split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Step 3: Feature Scaling
training_set = scale(training_set)
test_set = scale(test_set)

#The code gives a simple linear regression. A direction relation between an indepent variable and a dependent variable. 
