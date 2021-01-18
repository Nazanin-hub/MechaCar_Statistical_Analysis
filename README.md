# MechaCar_Statistical_Analysis
Perform statistical tests using the R programming language

## Project Overview

AutosRUs’ newest prototype Project, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. I helped Jeremy who is a data analyst for AutoRUs company, to perform the following statistical tests using R programming language to find a solution for this production issue:

 - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
 
 - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
 
 - Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
 
 - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Resources

Data Source: MechaCar_mpg.csv, Suspension_Coil.csv

Software: RStudio 1.3.1093

## Linear Regression to Predict MPG

The below image is the result of designing a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. 

![Coefficients](https://user-images.githubusercontent.com/71282697/104851499-2d24c080-58aa-11eb-86ae-e751c232da18.png)


 1- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
 
 Vehicle_lenght, ground_clearance, and intercept have the lowest Pr(>|t|) or highest t-value which it means they provided a non-random amount of variance to the mpg values in the dataset.
 
 2- Is the slope of the linear model considered to be zero? Why or why not?
 
 P-value = 5.35e-11 is less than significance level of 0.05 percent. So, there is enough evidence to reject the null hypothesis which means the slope of the linear model can not be considered to be zero.
 
 3- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
 
Yes, R-square is 0.715 which means approximately 71% of the time the model will predict mpg values correctly. Also, the vehicle weight, the spoiler angle, and AWD have the most significant effect on mpg. So, this linear model predicts the mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

The below result shows the mean, median, variance, and standard deviation of the PSI for all manufacturing lots.

![Summary_Suspension_Coils](https://user-images.githubusercontent.com/71282697/104851563-88ef4980-58aa-11eb-87b3-047f69012e54.png)

The below result shows the mean, median, variance, and standard deviation for each manufacturing lot.

![lot_summary_Suspension_Coils](https://user-images.githubusercontent.com/71282697/104851581-b3d99d80-58aa-11eb-8b1c-17a41a9e2db2.png)


1- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

 - Based on the first above result, the total variance is 62.29 psi <100 psi which means the current manufacturing data meets this design specification for all manufacturing lots in total. Also based on the second above result, it meets the design specification for lot1 and lot2 because their variance is 0.98 psi. and 7.47 psi. respectively which is less than 100. Just the lot3 does not meet the design specification cause its variance is 170 which is more than 100 pounds per square.

## T-Tests on Suspension Coils

The below result compares all manufacturing lots against mean PSI of the population.

![Sample_t_test_all_manufacturing_lots](https://user-images.githubusercontent.com/71282697/104854922-49325d00-58be-11eb-9b26-8de02365088c.png)

The below result compares manufacturing lot1 against mean PSI of the population.

![Sample_t_test_manufacturing_lot1](https://user-images.githubusercontent.com/71282697/104854939-6ebf6680-58be-11eb-82a8-ec998907db08.png)

The below result compares manufacturing lot2 against mean PSI of the population.

![Sample_t_test_manufacturing_lot2](https://user-images.githubusercontent.com/71282697/104854949-88f94480-58be-11eb-8479-e0152f96349b.png)

The below result compares manufacturing lot3 against mean PSI of the population.

![Sample_t_test_manufacturing_lot3](https://user-images.githubusercontent.com/71282697/104854968-a7f7d680-58be-11eb-9027-d6cd173befe5.png)

 - As the first above result shows, P-value = 0.06 is greater than the significance level of 0.05 percent. So, there is not enough evidence to reject the null hypothesis. This means that PSI across all manufacturing lots is statistically similar to the population mean of 1,500 pounds per square inch.
 
 - As the above results of lot1, lot2, and lot3 show, P-value in each manufacturing lot is greater than the significance level of 0.05 percent. So, the PSI for each manufacturing lot is statistically similar to the population mean of 1,500 pounds per square inch.

## Study Design: MechaCar vs Competition

- Cost, fuel efficiency, reliability, and horse power would be some interesting metrics for customers to design a statistical study to compare the performance of the MechaCar vehicles against the performance of vehicles from other manufacturers. 
- The null hypothesis would be there is no statistical difference between the MechaCar vehicles and all other vehicles. The alternative would be the opposite.
- An ANOVA test can be used to compare the each metric means across the different manufacturers.
- One dataset containing MechaCar vehicles dataset and all other vehicles manufacturers can be used to perform the test.


