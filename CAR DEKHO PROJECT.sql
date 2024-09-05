SELECT * FROM cars.car_dekho;

SELECT * FROM car_dekho;

# Total Cars Records
SELECT COUNT(*) FROM car_dekho;

# The manager asked the employee How many cars will be available in 2023?
SELECT COUNT(*) as "Cars in 2023"
FROM car_dekho
WHERE year = "2023";

# The manager asked the employee How many cars is available in 2020,2021,2022
SELECT COUNT(name) ,year
FROM car_dekho
WHERE year in ("2020", "2021", "2022")
GROUP BY year;

# Client asked me to print the total of all cars by year. I don't see all the details.

SELECT COUNT(name),year
FROM car_dekho
GROUP BY year;

# Client asked to car dealer agent How many diesel cars will there be in 2020?

SELECT COUNT(*)
FROM car_dekho
WHERE fuel = "diesel" AND year = "2020";

# Client requested a car dealer agent How many petrol cars will there be in 2020?

SELECT COUNT(*)
FROM car_dekho
WHERE fuel = "petrol" AND year = "2020";

# The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.

SELECT COUNT(*), fuel
FROM car_dekho
GROUP BY fuel ;

# Manager said there were more than 100 cars in a given year, which year had more than 100 cars?

SELECT year
FROM car_dekho
GROUP BY year
HAVING COUNT(*) > 100;


# The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.

SELECT COUNT(*),year
FROM car_dekho
where year between 2015 and 2023
GROUP BY year;



