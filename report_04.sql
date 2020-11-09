SELECT UPPER(custom .last_name) || ' ' || custom .first_name "NOM / Pr�nom du client",
CASE
WHEN (MONTHS_BETWEEN('14/10/2020', custom.pass_date)>12) THEN 'Perim� !'
WHEN (MONTHS_BETWEEN('14/10/2020', custom.pass_date) is NULL) THEN '-'
END "Pass"
FROM t_customer custom
LEFT OUTER JOIN t_pass pass
ON (custom.pass_id = custom.pass_id)
ORDER BY "NOM / Prenom du client" 
/
