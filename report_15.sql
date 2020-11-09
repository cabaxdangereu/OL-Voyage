SELECT UPPER(e.last_name) || ' ' || e.first_name "NOM Pr‚nom",
 COUNT(r.reservation_id) "Nb de resa"
FROM T_EMPLOYEE e
LEFT OUTER JOIN T_RESERVATION r
ON e.employee_id = r.employee_id
WHERE manager_id IS NOT NULL
GROUP BY manager_id, r.employee_id, e.last_name, e.first_name
ORDER BY "Nb de resa" DESC
/
