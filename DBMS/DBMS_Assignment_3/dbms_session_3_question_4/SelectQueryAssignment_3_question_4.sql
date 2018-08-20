
/**SQL
         query for that returns a Resultset containing Zip Code, City Names and
         States ordered by State Name and City Name.
**/

SELECT Zip_code,z.City AS City,z.State AS State FROM zipcodemapping

LEFT JOIN zipcode_city_state z

ON z.Id=Zip_code_mapping

ORDER BY z.State,z.City;
