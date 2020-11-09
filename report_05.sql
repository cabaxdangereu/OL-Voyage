SELECT traininfo.train_id "Numero du train ", depart.city || TO_CHAR(traininfo.departure_time, ' (DD/MM/YY HH24:MI) ') ||' - '|| arrivee.city ||
TO_CHAR(traininfo.arrival_time, ' (DD/MM/YY HH24:MI) ') " Trajet ", traininfo.distance " Distance", traininfo.price || '' " Prix initial "
FROM t_train traininfo
JOIN t_station depart
ON traininfo.departure_station_id = depart.station_id
JOIN t_station arrivee
ON traininfo.arrival_station_id = arrivee.station_id
ORDER BY traininfo.train_id ASC
/
