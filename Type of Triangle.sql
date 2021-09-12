SELECT
CASE
    WHEN A<(B+C) AND B<(A+C) AND C<(A+B) THEN
        CASE
            WHEN A = B AND B = C THEN 'Equilateral'
            WHEN A = B OR A = C OR B = C THEN 'Isosceles'
            ELSE 'Scalene'
        END
    ELSE 'Not A Triangle'
END
FROM TRIANGLES