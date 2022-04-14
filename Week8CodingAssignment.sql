use employees;
select count(e.emp_no) as Quantity, t.title as Title from employees e
join titles t on e.emp_no = t.emp_no
where e.birth_date  > '1965-01-01'
group by t.title;

select format(avg(s.salary), 2) as 'Average Salary', t.title as Title from salaries s
join titles t on s.emp_no  = t.emp_no 
group by t.title;

select sum(s.salary) as Total from salaries s
join employees e on e.emp_no = s.emp_no 
join dept_emp de on s.emp_no = de.emp_no 
join departments d on de.dept_no  = d.dept_no 
where d.dept_name  = 'Marketing' and s.to_date  between '1990-01-01' and '1992-12-31';


