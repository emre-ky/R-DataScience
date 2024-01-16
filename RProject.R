# Install packages 'rpart' and 'rpart.plot' (if not already installed)
install.packages("rpart")
install.packages("rpart.plot")

# Install packages
library(rpart)
library(rpart.plot)

# Load iris dataset
data(iris)

# Create the decision tree model
iris_tree <- rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris, method="class")

# Visualize the decision tree.
rpart.plot(iris_tree, main="Decision Tree for Iris Species", extra=101)