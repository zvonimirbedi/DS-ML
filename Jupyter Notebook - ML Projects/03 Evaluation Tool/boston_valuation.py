from sklearn.datasets import load_boston
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

import pandas as pd
import numpy as np


# Gather Data
boston_dataset = load_boston()
data = pd.DataFrame(data=boston_dataset.data, columns=boston_dataset.feature_names)
features = data.drop(['INDUS', 'AGE'], axis=1)
# print(data.head())

log_prices = np.log(boston_dataset.target)
target = pd.DataFrame(log_prices, columns= ['PRICE'])

MEDIAN_2019 = 583.3
INFLATION = MEDIAN_2019 / np.median(boston_dataset.target)

type(features.mean())
print('Average (or mean): \n',features.mean())

property_stats = features.mean().values.reshape(1, 11)
features.mean().values.reshape(1, 11)

regression = LinearRegression().fit(features, target)
predicted_fitted_vals = regression.predict(features)

MSE = mean_squared_error(target, predicted_fitted_vals)
RMSE = np.sqrt(MSE)

def get_log_estimate(num_rooms,
                    students_per_classroom,
                    next_to_river = False,
                    high_confidence = True):
    #configure property
    property_stats[0][4] = num_rooms
    property_stats[0][8] = students_per_classroom
    if next_to_river:
        property_stats[0][2] = 1
    else:
        property_stats[0][2] = 0
    
    
    
    #make prediction    
    log_estimate = regression.predict(property_stats)[0][0]
    
    #calc Range
    if high_confidence:
        upper_bound = log_estimate + 2*RMSE
        lower_bound = log_estimate - 2*RMSE
        interval = 95 #%
    else:
        upper_bound = log_estimate + RMSE
        lower_bound = log_estimate - RMSE
        interval = 68 #%
    
    return log_estimate, upper_bound, lower_bound, interval



def get_dollar_estimate(num_rooms,
                    students_per_classroom,
                    next_to_river = False,
                    high_confidence = True):
    """
    Estimate the price of the property of the Boston City
    
    Keyword arguments:
        num_rooms - number of rooms in the property
        students_per_classroom - number of students per teacher in the classroom for the school in the area
        next_to_river - Property next to the river; True or False
        high_confidence = Prediction interval; True: 95% and False: 68%
    """
    
    if num_rooms < 1 or students_per_classroom < 1:
        print('Unrealistic data, try again with other...')
        return
    
    
    log_est, upper_price, lower_price, confidance = get_log_estimate(
    num_rooms, 
    students_per_classroom=students_per_classroom, 
    next_to_river = next_to_river, 
    high_confidence = high_confidence)

    #calculate to todays value
    dollar_est = np.e**log_est * 1000 * INFLATION
    dollar_est_upper = np.e**upper_price * 1000 * INFLATION
    dollar_est_lower = np.e**lower_price * 1000 * INFLATION
    # round the dollar values to nerest thousand
    round_dollar_est = np.around(dollar_est, -3)
    round_dollar_est_upper = np.around(dollar_est_upper, -3)
    round_dollar_est_lower = np.around(dollar_est_lower, -3)

    print(f'The estimated property value is {round_dollar_est} USD.')
    print(f'The confidence is {confidance}%.')
    print(f'The estimated lower property value is {round_dollar_est_lower} USD and upper value is {round_dollar_est_upper} USD.')

    