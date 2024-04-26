# EJCR_ECEN360_FinalProject

README for ECEN 360 final project 

Group members: Case Alexander, Jack Campbell, Erin Gehle, Romi Gilat


## Accesing the notebook via Docker and Jupyter Notebook

To view the data analysis component of this project, you will need to 
download all the contents of this repo to ensure proper environment setup.
In addition, you will need to have Docker Desktop and a terminal.

### 1. Open terminal/powershell/command prompt
   Navigate to where you want to download the contents of this GitHub repository.
   We recommend using a simple path without spaces to prevent potential terminal errors.

### 2. Clone the repository
   You can clone the repo by using the following command:
   ```git clone https://github.com/RomiGilat/EJCR_ECEN360_FinalProject.git```. 

   Alternatively, you can navigate to the '<> Code' button in the top right corner of the
   repository, select 'HTTPS' (automatic), and then select 'Copy url to clipboard'.
   
   ![image](https://github.com/RomiGilat/EJCR_ECEN360_FinalProject/assets/143659787/079293fb-633e-44d0-896c-d89630346efd)

### 3. Navigate to  cloned repository.
   Assuming you are still in the directory where you used the ```git clone``` command, you can navigate to the cloned repository using
   ```cd EJCR_ECEN360_FinalProject```. 
   
### 4. Build the Docker Image
   The Dockerfile to run this code has been provided in the repository. To build the Docker image on your local machine, run the following
   command in your terminal/command prompt/powershell: 
   ```docker build -t final_project_ejrc:0.0.1 .```. _Make sure not to omit the period at the end or it will not build properly._

### 5. Run the Docker Container
   Now that you have built the image, you will need to run the following command to create the Docker container.
   ```docker run -v <path_to_repo>/:/home/notebooks -p 8888:8888 --name final_project final_project_ejrc:0.0.1```
   The ```docker run -v``` will create the docker volume for your container, meaning that edits to the code are permanent. For your
   path to the repo, it will be the same file path that you cloned the repository into with an additional ```/EJCR_ECEN360_FinalProject```.
   The ```-p 8888:8888``` is mapping the host and container ports to port 8888. Lastly the ```--name final_project final_project_ejrc:0.0.1```
   is naming the container ```final_project``` that will use the image ```final_project_ejrc:0.0.1``` that you created in step 4. 

   Make sure when writing your computer pathways slashes are `/` NOT `\`. PowerShell will default to `\`.
   If 8888:8888 is already in use, you can use a different port, like 8889:8888.

### 6. Getting to the Notebook
   Enter localhost:8888 to your browser (Chrome recommended) or Ctrl + click on one of the links that pops up in the terminal: \
   \
        http://3b68f782b520:8888/tree?token=e6f1df23091c3fd3b72be29515b32d569b335dd6ec903519 \
        http://127.0.0.1:8888/tree?token=e6f1df23091c3fd3b72be29515b32d569b335dd6ec903519

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
approval because the assumption of conditional independence does not hold.

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
