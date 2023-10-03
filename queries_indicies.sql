/* index that will speed up running time of queries */
CREATE INDEX index_car ON car (cid, aid);

/* count car stock stored in warehouse for each model and brand for a given agent */
SELECT		brand, model, COUNT(*) AS stock
FROM		car
WHERE		((cid is NULL) AND (aid = 09))
GROUP BY	brand, model

/* determine remaining amounts to be collected from customers for each financing plan */
SELECT		CA.aid, PL.pname, SUM(CA.cost - CU.repayment) AS remains

FROM					customer AS CU
			INNER JOIN 	 	 car AS CA ON CU.cid = CA.cid
			INNER JOIN 	 provide AS PR ON CA.vin = PR.vin
			INNER JOIN		plan AS PL ON PL.pid = PR.pid
			
GROUP BY	CA.aid, PL.pname