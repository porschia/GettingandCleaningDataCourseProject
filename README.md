#                                READ ME
                  
      The purpose of the analysis.R script is to walk the reader through the process
      of taking the cluttered data from the Samsung accelerometers that is provided at
      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
      and producing cleaned and understandable data. 
      
      I have included my cleaned data in the "polished_data.txt" file as well as a second
      tidy data set that has the average of each variable for each activity and each
      subject in the "data_means.txt" file.
      
      In order to use the "ddply" function to calculate the averages of each variable,
      the "plyr" package must be installed and loaded into your system.
                  
