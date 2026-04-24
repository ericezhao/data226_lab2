SELECT 
location_name, date, temp_mean, AVG(temp_mean) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_average,(temp_mean > 15 OR temp_mean < 10) AS temp_anomaly
FROM {{ ref("weather_data_lab1") }}

