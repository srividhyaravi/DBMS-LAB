6. Write a PL/SQL procedure to find the factorial of a given number and a program to call the same 


declare

      t number;

      fact1 number;

    
PROCEDURE procedure_fact (n in number,fact out number) is
    
i number;
 

BEGIN 
 
      fact:=1;

      for i in 1..n
  
    loop
	
      fact:=fact * i;

      end loop;
 

END; 



begin
      
t:=8;

      procedure_fact(t,fact1);
      
dbms_output.put_line('answer is '||fact1);

end;

/
