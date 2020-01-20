1. Write a PL/SQL program to display the contents of the above tables and then update the balance of a
few accounts. 

create table branch(
	code char(2) primary key,
	name varchar(10),
	assets int);

create table customer(
	ssn int primary key,
	name varchar(10),
	place varchar(5));

create table account(
	accno char(2) primary key,
	ssn int,
	code char(2),
	balance int,
	foreign key (code) references branch(code) on delete cascade,
	foreign key (ssn) references customer(ssn) on delete cascade);

insert into branch values(&code,&name,&assets);
insert into customer values(&ssn,&name,&place);
insert into account values(&accno,&ssn,&code,&balance);

begin

      for rec in (select * from customer) 
         loop
 dbms_output.put_line('name'||' '||rec.cname||'ssn is'||' '||rec.ssn);
      
end loop;

end;

 /

begin

      for rec in (select * from branch) 
         loop
 dbms_output.put_line('Code'||' '||rec.code||' '||Name is'||' '||rec.name||' ' || 'Assets is:'||' '||rec.assets);
      
end loop;

end;

 /

begin

      for rec in (select * from account) 
         loop
 dbms_output.put_line('Account number is:'||' '||rec.accno||'ssn is'||' '||rec.ssn||' '||'Code'||' '||rec.code||'Balance is:'||rec.balance);
      
end loop;

end;

 /

