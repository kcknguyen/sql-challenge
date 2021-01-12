--query # 1
Select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
From employees as e
Inner join salaries as s
on e.emp_no = s.emp_no;

--query # 2
Select first_name, last_name, hire_date
From employees
where date_part('year',hire_date)=1986;

--query # 3
Select d.dept_no, d.dept_name,dm.emp_no, e.last_name,e.first_name
From departments as d
Inner join dept_managers as dm 
on d.dept_no = dm.dept_no
Inner join employees as e 
on e.emp_no = dm.emp_no;

--query # 4
Select d.dept_name,e.emp_no, e.last_name,e.first_name
From departments as d
Inner join dept_emp as dm 
on d.dept_no = dm.dept_no
Inner join employees as e 
on e.emp_no = dm.emp_no;

--query # 5
Select last_name, first_name, gender
From employees 
where first_name = 'Hercules' and last_name like 'B%';

--query # 6
Select d.dept_name,e.emp_no, e.last_name,e.first_name
From departments as d
Inner join dept_emp as dm 
on d.dept_no = dm.dept_no
Inner join employees as e 
on e.emp_no = dm.emp_no
where d.dept_name='Sales';

--query # 7
Select d.dept_name,e.emp_no, e.last_name,e.first_name
From departments as d
Inner join dept_emp as dm 
on d.dept_no = dm.dept_no
Inner join employees as e 
on e.emp_no = dm.emp_no
where d.dept_name in ('Sales','Development');

--query # 8
SELECT last_name, COUNT(*) 
FROM Employees
GROUP BY last_name
ORDER BY count(*) desc;
