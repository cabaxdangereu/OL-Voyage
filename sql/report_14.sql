SELECT t.train_id "Numero Train", d.city  || ' - ' || a.city "Nom du train" , SUM(w.nb_seat)- COUNT(tk.ticket_id) "Nb de places libres"
FROM t_train t
 JOIN t_station a
  ON a.station_id = t.arrival_station_id
 JOIN t_station d
  ON d.station_id = t.departure_station_id
JOIN t_wagon_train wt
   ON t.train_id = wt.train_id
JOIN t_wagon w
   ON wt.wagon_id = w.wagon_id
JOIN t_ticket tk
   ON wt.wag_tr_id = tk.wag_tr_id
WHERE distance > '300'
AND TO_DATE(departure_time) = '22/10/20'
GROUP BY t.train_id, d.city  || ' - ' || a.city
ORDER BY t.train_id
/
