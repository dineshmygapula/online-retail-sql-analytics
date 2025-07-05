select a.department_id,dept_name.department_name,count(a.department_id) as number_of_emp  from employees as a
join (select department_id,avg(salary) from employees
group by department_id having avg(salary)>50000) as dept_sal
on a.department_id=dept_sal.department_id
join(select department_id,department_name from departments) as dept_name
on a.department_id=dept_name.department_id
group by a.department_id,dept_name.department_name;
