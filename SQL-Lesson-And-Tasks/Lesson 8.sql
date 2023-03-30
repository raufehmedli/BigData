select l.*,
case
currency_id when 12 then 'Turk lirasi'
when 14 then 'Rubl'
when 11 then 'AZN'
when 13 then 'USD'
end a from loan l;

select first_name,last_name,
case 
when interest_rate=14 and amount>90000 then '90000-den boyuk kredit'
when interest_rate=24 and amount>50000 then '50000-den boyuk kredit'
when interest_rate=13 and amount>20000 then '20000-den boyuk kredit'
when interest_rate=15 and amount>10000 then '10000-den boyuk kredit'
else 'diger kredit'
end as kredit from loan ;

select first_name,last_name,
case
when contract_id like 'E%' and currency_id=11 then 'Baki'
when contract_id like 'P%' and currency_id=12 then 'Istanbul'
when contract_id like 'A%' and currency_id=13 then 'Nyu York'
when contract_id like 'S%' and currency_id=14 then 'Moskva'
end as a from loan;

select
case
when filial_id=50 then 'Syscamore'
when filial_id=52 then 'Helena'
when filial_id=54 then 'Schiller'
when filial_id=56 then 'Corscot'
when filial_id=58 then 'Tennyson'
end as filial, l.* from loan l;


select first_name, 
case 
when last_name like 'K%' and amount>250000 then '250000-den yuxari maas'
when last_name like 'A%' and amount>150000 then '150000-den yuxari maas'
when last_name like 'M%' and amount>100000 then '150000-den yuxari maas'
when last_name like 'C%' and amount>50000 then '50000-den yuxari maas'
when last_name like 'W%' and amount>20000 then '20000-den yuxari maas'
end as maas from loan;

select
decode(currency_id,
11, 'AZN',
12, 'Turk liresi',
13, 'USD',
14, 'Rubl',
'diger pul vahididir')
as pul_vahidi, l.* from loan l;

alter table loan add e_mail nvarchar2(50);

select lower(first_name || last_name || 'gmail.com') as mail from loan;

update loan set e_mail=lower(first_name || last_name || 'gmail.com');

select * from loan;




