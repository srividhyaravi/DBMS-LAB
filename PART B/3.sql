3. Write a PL/SQL program to check whether a given number is prime or not

DECLARE
     n number := &n;
     j number := 2;
     counter number:=0;

BEGIN
    WHILE(j<=n/2) loop

        if mod(n,j)=0 then
            dbms_output.put_line(n ||' is not prime number');
            counter:=1;
            exit ;
        else
            j:=j+1;
        end if;
        end loop;

      if counter=0 then
          dbms_output.put_line( n || ' is a prime number');
      end if;
end;
/
