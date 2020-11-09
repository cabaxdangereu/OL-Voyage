SELECT train_id "Numero du train",depart.city || ' - ' ||arrivee.city  " Depart - Arrivee" ,pass_name "Nom du pass" ,(t_train.price*discount_pct)/100 "Reduc semaine", (t_train.price*discount_we_pct)/100 "Reduc Week-end"
FROM T_TRAIN
CROSS JOIN T_PASS JOIN T_STATION depart
ON depart.station_id = departure_station_id
JOIN T_STATION arrivee
ON arrivee.station_id = arrival_station_id AND d.city = 'Paris' ORDER BY train_id;