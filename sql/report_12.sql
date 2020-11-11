SELECT pass.pass_name "Nom du pass", COUNT(client.pass_id)"Nombre de pass"
FROM T_PASS pass
JOIN T_CUSTOMER client
ON pass.pass_id = client.pass_id
GROUP BY client.pass_id, pass.pass_name
ORDER BY COUNT(client.pass_id)desc;
