create or replace procedure ps(em in emp.ename%TYPE,sc  out emp.sal%type)
is 
begin 
select sal+nvl(comm,0) into sc from emp where ename=em;
end;




declare
em emp.ename%TYPE;
sc emp.sal%type;

cursor c1  
is 
select ename from emp;
begin
for i in c1 loop 
em:=i.ename;
ps(em,sc);
dbms_output.put_line(em||sc);
end loop;
end;
 