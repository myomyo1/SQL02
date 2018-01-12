--1번
select max(salary) as 최고임금
    , min(salary) as 최저임금
    , max(salary)-min(salary) "최고임금-최저임금"
from employees;

--2번
select to_char(max(hire_date),'YYYY"년" MM"월" DD"일"')
from employees;


--3번 부서번호 내림차순
select department_id
    ,round(avg(salary),0) 
    ,max(salary)
    ,min(salary)
from employees
group by department_id
order by department_id desc;

--4번 업무아이디 내림차순
select  job_id || '  ' || round(avg(salary),0)
    , job_id || '  ' || max(salary)
    , job_id || '  ' || min(salary)
from employees
group by job_id
order by job_id desc;

--5번
select to_char(min(hire_date),'YYYY"년" MM"월" DD"일"')
from employees;

--6번
select department_id
    ,round(avg(salary),0)
    ,min(salary)
    ,round(avg(salary),0)-min(salary)
from employees
group by department_id
having round(avg(salary),0)-min(salary)<2000
order by round(avg(salary),0)-min(salary) desc;

--7번
select job_id
    ,max(salary) - min(salary)
from employees
group by job_id
order by max(salary)-min(salary) desc;