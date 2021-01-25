# MechaCar_Statistical_Analysis

## Project Overview
Using R to perform linear regression analysis, collect summary statistics on the PSI of suspension coils, and running t-tests to decide if the manufacturing lots differ from the average population for AutosRUs' prototype MechaCar. 

## Resources
- Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: Rstudio 4.0.3

## Results

## Linear Regression to Predict MPG
After building a linear model to predict the mpg of MechaCar prototypes that passseed through all the variables in the data source, I was able to conclude the following:  

- The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset were vehicle length, and ground clearance. Both had p-values well below the .05 signifigance level, meaning their probability of being wrong is high, and we would need to reject our null hypothesis. 

- The slope of the linear model is considered to be not equal to zero because the probability value is below the significance level. 

- The linear model predicts the MechaCar prototypes MPG at about a C average (an R-squared value of 0.7149). While this number is high enough to satisfy the majority of data comparisons to real life, if it were a more important statistic like breaking power, we would want to reconsider using this linear model, or get a lager data sampling.  

![Linear Regression Model and Summary Module 15](https://user-images.githubusercontent.com/71476009/105652481-fe48b480-5e7e-11eb-8327-b0ae29ea3f51.png)

## Summary Statistics on Suspension Coils
Upon building Total Summary and Lot Summary dataframes to summarize the Suspension Coil data, I was able to determine: 

- The current manufacturing data met the requirement of suspension coils not exceeding 100 pounds per square inch for the collective lots at 62 pounds per square inch. However, when I broke it down further, by lot, it appears Lot 3 is well over the requirement at 170 pounds per square inch, while Lot 1 and 2 are well under. 

![Total_Summary_Module15](https://user-images.githubusercontent.com/71476009/105653018-4fa57380-5e80-11eb-8207-fb188e76fb37.png)
![Lot Summary Module 15](https://user-images.githubusercontent.com/71476009/105653039-5df38f80-5e80-11eb-91f8-cd30c887cc2e.png)

## T-Tests on Suspension Coils
By building t-tests to determine if the PSI across all manufacturing lots were statistically different from the population mean of 1,500 pounds per square inch, I was able to deduce the following:

- Lot 1:

Lot 1 had a p-value of 1, meaning it was not statistically significant as it has a mean equal to 1500.

![t-test Lot1](https://user-images.githubusercontent.com/71476009/105654648-140ca880-5e84-11eb-9c29-9d761e68dd59.png)

- Lot 2:

Lot 2 had a low p-value of 0.6072, giving reason to reject the null hypothesis. 

![t-test Lot 2](https://user-images.githubusercontent.com/71476009/105655245-51256a80-5e85-11eb-8ef9-ca3e0c05a458.png)

- Lot 3:

Lot 3 had a significant p-value at 0.04168.

![t-test lot 3](https://user-images.githubusercontent.com/71476009/105655975-d5c4b880-5e86-11eb-928d-8fd088b34d7c.png)

- In the t-test for all lots, the average came to 1498.78, while the p-value was 0.06. As the p-value is not below the 0.05, and still in significance range, we are unable to reject the null hypothesis. 

![t-test all](https://user-images.githubusercontent.com/71476009/105654224-2a663480-5e83-11eb-9b2b-4c2a0fa2575c.png)

## Study Design: MechaCar vs Competition
To qualify how MechaCar performs against the competition in the field of safety, I would consider further testing the following:

- The metrics I would test are the NHTSA rates, Total Motor Vehicle Incident Reports, Average Lifecycle of the vehicle, and the Federal Motor Vehicle Standards.

- I would have to figure out the baseline measurement, possibly whether or not the accident included fatalities. The null hypothesis would be the vehicle's similarities in damage after impact. The alternative hypothesis confirms the differences with safety and usability. Were there fatalities and if not was the vehicle drivable after the accident? 

- The ANOVA test would be useful for measuring these metrics as there are more than three independent groups being compared. To run an ANOVA test, you need the dependent variable to be continuous (like the lifetime length of the vehicle), and we would need the independent variable to be catagorical (was the car usable after impact, Y/N?) 
