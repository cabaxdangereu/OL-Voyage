SELECT UPPER(last_name) ||' '|| first_name " NOM Prenom ", address " Adresse "
 FROM t_customer
 WHERE pass_id IS NULL
 ORDER BY last_name, first_name;