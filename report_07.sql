SELECT *
FROM(SELECT depart.city || ' - ' || arrivee.city "Depart - Arrivee ", COUNT(ticket_id) "Nb tickets"
FROM T_TRAIN train
JOIN T_STATION depart
ON train.departure_station_id = depart.station_id
JOIN T_STATION arrivee
ON train.arrival_station_id = arrivee.station_id
JOIN T_WAGON_TRAIN wag
ON train.train_id=wag.train_id
JOIN T_TICKET ticket
ON ticket.wag_tr_id = wag.wag_tr_id
GROUP BY train.train_id, depart.city, arrivee.city
ORDER BY COUNT(ticket_id) DESC)
WHERE ROWNUM <=5
/
