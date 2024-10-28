### Project Overview
Many information of a telcom service management system can be managed in this project. 
Information about customers, sim number, sim operator name, details, call cost of certain duration all of these can be managed in this project. Here we can able to see the sim number the user have and the call cost of that particular user and the operator he uses.


### Database Structure
The database consists of four tables and they are customer details table, sim table, call cost table, operators table.
Customer details table have one to many relationship with sim table. Operators table have one to many relationship with sim table. Operators table have one to one relationship with call cost table.

### Objective of Database :
Call cost table is used to maintain the detailed records of call charges based on duration facilating dynamic pricing and billing strategies. 
Customer details table is used to securely store and manage comprehensive details about customers, including identification, demographic information and location. The operators table is helpful to track information about various telecom operators, including their name and the specific call durations they offer, ensuring that call costs are applied correctly and allowing for service comparisons. The sim table is used to administer sim card and track their distribution among customers and operators, including cost associated with each sim type.
