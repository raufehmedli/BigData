select * from LOAN;
create or replace procedure get_full_info IS
  CURSOR c_full IS
    SELECT contract_id,act_date,first_name,last_name,amount,currency_id,interest_rate,filial_id,commission
    FROM loan;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Contract | DATE |  First Name | Last Name  | AMOUNT | CURRENCY | INTEREST | FILIAL | COMMISSION');
  FOR l IN c_full LOOP
    DBMS_OUTPUT.PUT_LINE
    (l.contract_id || ' | ' || l.act_date || ' | ' || l.first_name || ' | ' || 
    l.last_name || ' | ' || l.amount || ' | ' || l.currency_id || ' | ' || 
    l.interest_rate || ' | ' || l.filial_id || ' | ' || l.commission);
  END LOOP;
END;
/
exec get_full_info;

create or replace procedure loan_interval IS
  CURSOR l_amount IS
    SELECT *
    FROM LOAN
    WHERE amount > 900000 AND amount < 910000;
BEGIN
    FOR l IN l_amount LOOP
        DBMS_OUTPUT.PUT_LINE
        (l.contract_id || ' | ' || l.act_date || ' | ' || l.first_name || ' | ' || 
        l.last_name || ' | ' || l.amount || ' | ' || l.currency_id || ' | ' || 
        l.interest_rate || ' | ' || l.filial_id || ' | ' || l.commission);
    END LOOP;
END;
/
exec loan_interval;




create or replace procedure loan_enter IS
BEGIN
  FOR l IN (
    SELECT *
    FROM LOAN
    WHERE amount BETWEEN 970000 AND 1000000
  )
  LOOP
        DBMS_OUTPUT.PUT_LINE
        (l.contract_id || ' | ' || l.act_date || ' | ' || l.first_name || ' | ' || 
        l.last_name || ' | ' || l.amount || ' | ' || l.currency_id || ' | ' || 
        l.interest_rate || ' | ' || l.filial_id || ' | ' || l.commission);
    END LOOP;
END;
/
exec loan_enter;