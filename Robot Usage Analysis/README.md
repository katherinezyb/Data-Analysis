#### Data Background
iRobot has a series of wifi-connected robotic vacuum cleaners available for sale worldwide. These robots are capable of autonomously navigating a home to vacuum its floors. Upon mission completion, they send a summary report of the mission to cloud services, where it is processed and stored as a row in a database. However, any cleaning mission performed while the robot is not connected to wifi (either by user's choice or a faulty connection) will not be saved in the database. In addition, there are occasional periods where cloud services malfunction and no missions are reported, resulting in discrete periods of data loss.

These robots are programmed with an automatic recharge and resume function, which means that when the robot detects its battery levels reaching critically low levels, it will navigate back to the charging dock if available and charge for up to 90 minutes before resuming the mission. In addition, if a robot becomes stuck on an obstacle in its environment or is manually paused by a button press, it will cease cleaning for up to 90 minutes before terminating the mission. If the user restarts the mission with a button press within 90 minutes of the pause, the robot will continue cleaning normally. The number of minutes spent cleaning, charging, or paused are reported for each mission, as is the mission outcome (a field describing whether the mission was cancelled, the robot got stuck, the battery died, or the robot completed the job successfully).
***
#### Analysis
Performed data analysis exploring use patterns of the typical robot user per country and figure out any possible effects of data loss.
1. Geographic differences in robot usage
- Considered all descriptive features of a mission, including when and how frequently it occurred.
- Summarized trends in features that might impact design decisions for the hardware, battery, or navigation algorithms of robots sold in different regions.
 
2. Quantified the extent of the data loss, differentiating between discrete catastrophic events and random mission loss for individual robots. Investigated whether this loss is uniform or whether it may be impacting other analyses.
