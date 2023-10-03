DELETE FROM      car;
DELETE FROM     plan;
DELETE FROM    agent;
DELETE FROM customer;
DELETE FROM	 provide;

/* cid,  cname */
INSERT INTO customer VALUES 		 		       	  (10, 'customer_10', 50);
INSERT INTO customer VALUES 		  		   	     (11, 'customer_11', 100);
INSERT INTO customer VALUES 		 		 	     (12, 'customer_12', 150);

/* pid, pname */
INSERT INTO     plan VALUES 								  (04, 'plan_04');
INSERT INTO     plan VALUES 							      (05, 'plan_05');
INSERT INTO     plan VALUES 						          (06, 'plan_06');

/* aid, aname */
INSERT INTO	   agent VALUES 							     (07, 'agent_07');
INSERT INTO	   agent VALUES 							     (08, 'agent_08');
INSERT INTO	   agent VALUES 							     (09, 'agent_09');

/* vin, model, brand, power, cost, cid, aid */
INSERT INTO      car VALUES   (01, 'model_01', 'brand_01', 1000, 100, 10, 07);
INSERT INTO      car VALUES (04, 'model_01', 'brand_01', 1000, 100, NULL, 07);

INSERT INTO      car VALUES   (02, 'model_02', 'brand_02', 1500, 200, 11, 08);
INSERT INTO      car VALUES (05, 'model_02', 'brand_02', 1500, 200, NULL, 08);
INSERT INTO      car VALUES (06, 'model_02', 'brand_02', 1500, 200, NULL, 08);

INSERT INTO      car VALUES   (03, 'model_03', 'brand_03', 2000, 300, 12, 09);
INSERT INTO      car VALUES (07, 'model_03', 'brand_03', 2000, 300, NULL, 09);
INSERT INTO      car VALUES (08, 'model_03', 'brand_03', 2000, 300, NULL, 09);
INSERT INTO      car VALUES (09, 'model_03', 'brand_03', 2000, 300, NULL, 09);

/* vin, pid */
INSERT INTO provide VALUES 		 		    			 	         (01, 04);
INSERT INTO provide VALUES 		  		   			     	         (02, 05);
INSERT INTO provide VALUES 		 		 			     	         (03, 06);
INSERT INTO provide VALUES 											 (04, 06);
INSERT INTO provide VALUES 											 (05, 04);
INSERT INTO provide VALUES 											 (06, 05);
INSERT INTO provide VALUES 											 (07, 04);
INSERT INTO provide VALUES 											 (08, 05);
INSERT INTO provide VALUES 											 (09, 06);