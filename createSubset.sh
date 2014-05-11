#Extract only the header and the data for 2007-02-01 and 2007-0202  

cat household_power_consumption.txt | grep  '^Date' > subset.txt 
cat household_power_consumption.txt | grep  '^1/2/2007;'  >> subset.txt
cat household_power_consumption.txt | grep  '^2/2/2007;'  >> subset.txt
