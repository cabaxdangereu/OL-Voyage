 SELECT *
    FROM(SELECT COUNT(employee_id)  "Nb employee"
       FROM T_EMPLOYEE),
      (SELECT COUNT(customer_id) " Nb clients"
      FROM T_CUSTOMER),
      (SELECT((SELECT COUNT(customer_id)
      from T_CUSTOMER
      WHERE ADD_MONTHS(pass_date,12)>=SYSDATE)/(SELECT COUNT(customer_id)
      FROM t_CUSTOMER)*100) " % client abonn� "
      FROM (SELECT COUNT(customer_id)
     FROM T_CUSTOMER)),
      (SELECT COUNT(train_id) " Nb trains "
      FROM T_TRAIN),
      (SELECT COUNT(station_id) " Nb gares "
      FROM T_STATION),
      (SELECT COUNT(reservation_id) " Nb resa "
      FROM T_RESERVATION),
      (SELECT COUNT(ticket_id) " Nb billets "
      FROM T_TICKET)
/
