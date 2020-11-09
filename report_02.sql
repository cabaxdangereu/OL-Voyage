SELECT DISTINCT UPPER(custom .last_name) || ' ' || custom .first_name "NOM / Prnom du client"
FROM T_CUSTOMER custom JOIN T_RESERVATION resa
ON resa.buyer_id = custom.customer_id JOIN T_TICKET ticket
ON ticket.reservation_id = resa.reservation_id
WHERE resa.buyer_id != ticket.customer_id
ORDER BY "NOM / Prenom du client"
/
