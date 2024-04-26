# EJCR_ECEN360_FinalProject

README for ECEN 360 final project 

Group members: Case Alexander, Jack Campbell, Erin Gehle, Romi Gilat


## Accesing the notebook via Docker and Jupyter Notebook

To view the data analysis component of this project, the user will need to 
download the Docker file to ensure the proper environment is provided so 
all the necessary libraries and their dependencies can run properly.

1. Open terminal/powershell/command prompt, navigate to where you want to      download the docker file 

2. Clone the repository
   This can be done using the command: git clone <respository_URL>
   This is the URL:    
   https://github.com/RomiGilat/EJCR_ECEN360_FinalProject.git

   If this link doesn't work, navigate to code within the main git page,    
   and use the HTTPS link
   
4. Navigate to  cloned repository.
   This can be done using cd <repository_name>
   Repo name: EJCR_ECEN360_FinalPRoject

5. Build the Docker image.
   docker build -t final_project_ejrc:0.0.1 .

6. Run the Docker Container
   docker run -v <your computer pathway>/:/home/notebooks -p 8888:8888 --name final_project final_project_ejrc:0.0.1

   make sure when writing your computer pathways slashes are '/' NOT '\'
   if 8888:8888 is already in use, use 8889:8888

5. enter localhost:8888 to your browser

   Voila!


## Project Description

For the final project of our data analysis class, we chose to determine the 
factors that affect loan approval, creating a predictive model that can 
accurately predict whether a loan would be approved or rejected based on 
different variables.

The variables include interest rates, installment amount, log of annual 
income, FICO scores, revolving balance, and inquiries in the last six 
months. We chose to use these variables due to their impact on loan 
approval. This is demonstrated in the Lasso regularization technique, where 
a positive coefficient suggests that an increase in that feature's value 
would correspond to an increase in the target variable, while a negative 
coefficient suggests the opposite.

Within the Naive Bayes model, although it is not a good fit for showcasing 
our data, it provided a visual representation. For example, the correlation 
between FICO and interest rate showed a negative correlation, with interest 
rates decreasing as FICO scores increased. Similarly, the correlation 
between installment amount and log of annual income was positive, 
highlighting that higher incomes corresponded to larger installment plans 
for paying back loans. While these factors contribute to loan approval 
decisions by banks, the Naive Bayes model does not properly assess loan 
approval because it considers too few elements.

In Logistic Regression, the range of loan interest rates fell between 6% 
and 21%, but with few data points above 18%. To make better predictions and 
utilize the dataset effectively, we excluded data points above 18% while 
still maintaining a significant amount of data. This visualization enabled 
us to predict whether a loan would be approved or rejected, with 
individuals having FICO scores between 650 and 670 facing a 55% rejection 
rate, while those with scores above 700 had a 70%+ chance of approval. 
While this was not our sole prediction model, it was invaluable in 
verifying our predictions and providing visual representations of expected 
data behavior. 



We chose to exclude debt-to-income ratio, number of delinquencies, and 
public records because they showed little correlation with loan approval. 
The Lasso regression of these variables showed "0" correlation when 
compared, indicating no relationship between the predicted data and the 
given variables. This was further evidenced by the nonsensical scatter 
plots in the Naive Bayes analysis, which lacked patterns or logic. In 
Logistic Regression, these variables were excluded from the final 
prediction due to their incorrect correlation. Lastly, the scatter plots in 
KNN analysis lacked direction, often clustering data points at the bottom 
of the graph or showing a lack of structure, leading to their removal from 
the final dataset. Compared to properly correlated data, which exhibited
either positive or negative correlations, this stark difference indicated 
that these data points should not be used for predictions. This lack of correlation is further illustrated in the "Correlation Between 
Different Loan Variables" graph in the Jupyter notebook.
