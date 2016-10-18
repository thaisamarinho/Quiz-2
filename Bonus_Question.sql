SELECT department, Count(*) AS requests_num FROM requests
GROUP BY department
