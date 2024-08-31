# BAN6420-MOD1
 A Python program to facilitate the weekly payments of workers. 
This Python code is used to generate workers and payment slips based on certain criteria
   # Highridge Construction Company - Worker Payment Slip Generator

   ## Overview
   This project consists of a Python and R program designed to facilitate the weekly payments of workers at Highridge Construction Company.

   ## Features
   - Dynamically creates a list of 400 workers with random salaries and genders.
   - Generates payment slips based on specific salary and gender criteria.
   - Exception handling implemented to manage potential errors.

   ##  Break down of code
   1) The code imports two libraries, random and json, which are used for generating random values and working with JSON data, 
   respectively.

   2) Two lists names and genders are defined to store sample data for names and genders.
      
   3) The generate_workers function is defined to create a list of workers with random names, salaries, and genders. It takes num_workers 
   as a parameter representing the number of workers to generate.

   4) Inside the generate_workers function:
   - A loop iterates num_workers times to create a worker each time.
   - The worker's name is randomly selected from the names list.
   - The worker's salary is randomly generated between 5000 and 35000.
   - The worker's gender is randomly chosen from the genders list.
   - The worker's details are appended to the workers list.

   5) The generate_payment_slips function is defined to create payment slips for each worker based on their salary and gender. It takes a 
   list of workers as a parameter.

   6) Inside the generate_payment_slips function:
   - A loop iterates through each worker in the workers list.
   - Based on the worker's salary and gender, a specific payment level (`level`) is assigned. This level is stored in the level variable.
   - Conditions are checked to determine the payment level:
     - If the worker's salary is between 10000 and 20000, the level is set to "A1".
     - If the worker's salary is between 7500 and 30000 and the worker is female, the level is set to "A5-F".
     - Otherwise, the default level is set to "N/A".
   - The payment level is assigned to the worker's details.
     
   ## Files
   - payment_slips.py: Python code implementation.
   - payment_slips.R: R code implementation.

   ## Usage
   - Make sure you have Python installed to run the python code and execute the script using:
     hrpayment_slips.py


   - To run the R program, ensure you have R installed and execute the script using:
     hrpayment_slips.R




   ## Output
   - The Python program generates a payment_slips.json file.
   - The R program generates a payment_slips.csv file.

   ## Requirements
   - installed Python 3 or R 4.
