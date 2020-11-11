SELECT ti.ticket_id "Numero Billet", UPPER(c.last_name) || ' ' || c.first_name as "NOM Pr‚nom",
 depart.city || ' (' || to_char(t.departure_time, 'DD/MM/YYY HH24:MI') || ') - ' || arrive.city || ' (' || to_char(t.arrival_time,'DD/MM/YYYY HH24:MI') ||')' "Train"
FROM t_train t
JOIN t_station depart
ON depart.station_id = t.departure_station_id
JOIN t_station arrive
ON arrive.station_id = t.arrival_station_id
JOIN t_wagon_train w
ON t.train_id = w.train_id
JOIN t_wagon wa
ON w.wagon_id = wa.wagon_id
JOIN t_ticket ti
ON w.wag_tr_id = ti.wag_tr_id
JOIN t_reservation r
ON ti.reservation_id = r.reservation_id
JOIN t_customer c
ON r.buyer_id = c.customer_id
WHERE MONTHS_BETWEEN(SYSDATE, birth_date) < 300
AND departure_time
BETWEEN '20/10/2020' AND '26/10/2020'
AND r.creation_date <= t.departure_time-20
ORDER BY r.creation_date
/
