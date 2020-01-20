4. Using cursors demonstrate the process of copying the contents of one table to a new table

 create table part1(pnoint,pname char(20),colour char(20),primary key(pno));
 create table copy_part1(pnoint,pname char(20),colour char(20),primary key(pno));

 insert into part1 values(10,'nuts','black');
 insert into part1 values(20,'bolts','grey');
 insert into part1 values(30,'screw','green');

setserveroutput on
declare cursorcurr is
   select *from part1;
   counterint;
   rows part1%rowtype;
begin
   opencurr;
   loop
        fetchcurr into rows ;
   exit when curr%notfound;

        insert into copy_part1 values(rows.pno,rows.pname,rows.colour);
   end loop;
        counter := curr%rowcount;
   closecurr;
        dbms_output.put_line(counter||' rows inserted into the table copy_part1 ');
end;
/