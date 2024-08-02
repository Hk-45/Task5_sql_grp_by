select * from employee

	--It shows you sum & avg of salary at particulat department
select department, sum(salary), avg(salary) 
	from employee where age >=30 group by department 

 --it shows the avg age & sum of salary at particular position
select position, avg(age), sum(salary) 
	from employee group by position

   --it shows no. of employees work on project & there sum & max of salary
select proj_id, count(proj_id), sum(salary), max(salary) from employee 
    where age < 40 group by proj_id

 --it shows emp & department whose salary less than 50000
select name, department, sum(salary) from employee 
	where salary < 50000 
	group by name, department 
	having sum(salary) < 50000

  --it show no. of emp whose salary is mor than 50000 & age is less than 32 work on project 
select name, age, proj_id, sum(salary) from employee 
	where age < 32 
	group by name, age, proj_id
	having sum(salary) > 50000

select * from employee
select * from employee_info

  --it shows department, position & count of age greater than 35
select department, position, count(age), max(age) from employee_info 
	group by department, position 
	having count(age) > 35

 -- emp age less than 30 and sum of salary is grater than 60000 in particular department
select name, age, department, proj_id from employee
	where age < 30
    group by name, age, department, proj_id 
    having sum(salary) > 60000

 --sum of salary & avg of salary in particular department
select department, sum(salary), avg(salary) from employee 
   group by department

--how many proj assign to particular emp whose age less than 35
select name, count(proj_id), sum(age) from employee 
    group by name 
    having sum(age) < 35


-- it shows only male emp who works in praticular position 
select gender, position, max(salary) from employee 
	where gender = 'Male'
    group by gender, position, salary

-- it shows only female emp who works in praticular position
select gender, position, max(salary) from employee 
	where gender = 'Female'
    group by gender, position, salary


select * from employee
