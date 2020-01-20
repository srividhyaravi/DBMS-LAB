2. Write a program that gives all employees in department 10 a 15% pay increase. Display a message
displaying how many employees were awarded the increase.





Begin
      update employee1
      set salary=(1.15*salary) where deptno=10;
          dbms_output.put_line('number of rows updated are'||sql%rowcount);
end;
/
