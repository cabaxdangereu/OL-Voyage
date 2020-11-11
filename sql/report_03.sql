SELECT*
FROM(SELECT resa.reservation_id "N.reservation", resa.creation_date "Date", emp.last_name || ' ' ||emp.first_name "Employee",custom.last_name || ' ' || custom.first_name "Client"
FROM T_RESERVATION resa
JOIN T_EMPLOYEE emp
ON resa.reservation_id = emp.employee_id
JOIN T_CUSTOMER custom
ON resa.buyer_id = custom.customer_id
GROUP BY resa.reservation_id, resa.creation_date, emp.last_name, emp.first_name, custom.last_name, custom.first_name)
WHERE ROWNUM = 1
/
