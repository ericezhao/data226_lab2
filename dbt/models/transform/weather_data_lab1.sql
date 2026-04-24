SELECT location_name, date, temp_mean
FROM {{ source('raw', 'weather_data_lab1') }}
WHERE location_name = 'San Jose'