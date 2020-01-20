7. Write a PL/SQL program to check whether a given number is palindrome or not. 

Declare
   n number(10);
   i number(10);
   sum1 number(10); 
   k number(10);

Begin
     sum1:=0;
     n:=&n;
     k:=n;
          while (n>0) loop
          i:=mod(n,10);
          sum1:=(sum1*10)+i;
          n:=trunc(n/10);
          end loop;
    if(k=sum1) then
         dbms_output.put_line('Given Number is a Palindrome Number');
    else
         dbms_output.put_line('Given Number is not a Palindrome Number');
    end if;
end;
/
