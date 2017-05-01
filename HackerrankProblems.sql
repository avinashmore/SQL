/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
Output one of the following statements for each record in the table:

Not A Triangle: The given values of A, B, and C don't form a triangle.
Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.

*/

SELECT CASE WHEN A + B > C AND A+C>B AND B+C>A THEN 
	CASE WHEN A = B AND B = C THEN 'Equilateral' 
	WHEN A = B OR B = C OR A = C THEN 'Isosceles' 
	WHEN A != B OR B != C OR A != C THEN 'Scalene' 
	END 
	ELSE 'Not A Triangle' 
END FROM TRIANGLES;


/*
https://www.hackerrank.com/challenges/the-pads


*/
select concat(name,concat(concat('(',substr(Occupation, 1,1)),')')) from OCCUPATIONS  order by name;

select concat(concat(concat(concat('There are total ',count(occupation)),' '),lower(occupation)),'s.') 
as total from occupations group by occupation order by total;