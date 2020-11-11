SELECT COUNT(client.customer_id) "Nb de client avec reduc Senior "
FROM T_CUSTOMER client
JOIN T_PASS pass
ON pass.pass_id = client.pass_id
JOIN T_RESERVATION resa
ON resa.buyer_id = client.customer_id
JOIN T_TICKET ticket
ON ticket.reservation_id = resa.reservation_id
JOIN T_WAGON_TRAIN wagon
ON wagon.wag_tr_id = ticket.wag_tr_id
JOIN T_TRAIN train
ON train.train_id = wagon.wag_tr_id
WHERE pass.pass_name = 'Senior' AND resa.price IS NOT NULL
AND train.departure_time LIKE '%/10/20';
