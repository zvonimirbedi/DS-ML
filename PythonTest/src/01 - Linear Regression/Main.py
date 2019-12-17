import pandas
from pandas import DataFrame
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

# Load the table from CSV file
data = pandas.read_csv("C:/Users/BediZ/DS-ML/Jupyter Notebook - ML Projects/01 Linear Regression/cost-revenue-clean.csv")

# Basic data about loaded table
#print(data.describe())

# Define Axis of the graph
X = DataFrame(data, columns=['production_budget_usd'])
y = DataFrame(data, columns=['worldwide_gross_usd'])

# Style the graph
plt.figure(figsize=(10,6))
plt.scatter(X, y, alpha =0.3)
plt.title('Film Cost vs Global Revenue')
plt.xlabel('Production Budget $')
plt.ylabel('Worldwide gross $')
plt.ylim(0, 3000000000)
plt.xlim(0, 450000000)

# Line
#
regression = LinearRegression()
regression.fit(X, y)

# Slope Coefficient
# slopeCoef * X = y
print(regression.coef_)

# Intercept
# if (X=0) {intercept = y}
print(regression.intercept_)
# Draw a line on the graph using X and predict X, added styling of the line
# y = ( regression.intercept_ + regression.coef * X )
plt.plot(X, regression.predict(X), color='green', linewidth=4)

# accuracy percentage of the line prediction
print(regression.score(X, y))

plt.show()

