SELECT 
    e.name,
    e.salary,
    d.department_name
FROM 
    employees AS e
JOIN (
    SELECT 
        department_id, 
        AVG(salary) AS avg_salary
    FROM 
        employees
    GROUP BY 
        department_id
) AS dept_avg
ON 
    e.department_id = dept_avg.department_id
JOIN 
    departments AS d 
ON 
    e.department_id = d.department_id
WHERE 
    e.salary > dept_avg.avg_salary;
