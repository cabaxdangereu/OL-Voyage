SELECT train.train_id "Numero Train", ROUND(train.distance/((train.arrival_time-train.departure_time)*24), 0) ||' km/h' "Vitesse Moyenne",depart.city ||' - '|| arrivee.city "Depart - Arrivee"
FROM t_train train
JOIN t_station depart
ON (train.departure_station_id=depart.station_id)
JOIN t_station arrivee
ON (train.arrival_station_id=arrivee.station_id)
ORDER BY train_id;

