SELECT *
FROM(SELECT UPPER(emp.last_name) || ' ' || emp.first_name "NOM/PRENOM de l'employee"
FROM T_EMPLOYEE emp
JOIN T_RESERVATION resa
ON resa.employee_id = emp.employee_id
GROUP BY emp.last_name, emp.first_name
ORDER BY COUNT(resa.reservation_id)DESC)
WHERE ROWNUM = 1
/
