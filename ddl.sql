/* DROP TABLE       car CASCADE;
   DROP TABLE      plan CASCADE;
   DROP TABLE     agent CASCADE;
   DROP TABLE  customer CASCADE;
   DROP TABLE 	provide CASCADE; */

CREATE TABLE customer
	(cid							INT, --customer id
	 cname	   				VARCHAR(11), --customer name
	 repayment					NUMERIC, --repayment cost

	 PRIMARY KEY				  (cid));
	 
CREATE TABLE agent
	(aid			  	   			INT, --agent id
	 aname					 VARCHAR(8), --agent name
	 
	 PRIMARY KEY	     		  (aid));
	 
CREATE TABLE car						 --the car
	(vin			       			INT, --whose vin is
	 model					 VARCHAR(8), --whose model is
	 brand					 VARCHAR(8), --whose brand is
	 power				        NUMERIC, --has engine power
	 cost						NUMERIC, --has purchase cost
	 cid				     		INT, --was purchased by customer
	 aid					 		INT, --and sold by agent
	 
	 PRIMARY KEY				  (vin),
	 
	 FOREIGN KEY		 		  (cid)
	 	REFERENCES		 customer (cid)
		ON DELETE			    CASCADE,
	 
	 FOREIGN KEY		 		  (aid)
	 	REFERENCES		    agent (aid)
		ON DELETE			    CASCADE);

CREATE TABLE plan
	(pid				   			INT, --purchase plan id
	 pname				     VARCHAR(7), --purchase plan
	 
	 PRIMARY KEY		 		 (pid));

CREATE TABLE provide
	(vin			       			INT,
	 pid						    INT,
	
	 PRIMARY KEY			 (vin, pid),
	 
	 FOREIGN KEY		 		  (vin)
	 	REFERENCES		   	  car (vin)
		ON DELETE				CASCADE,
	
	 FOREIGN KEY		 		  (pid)
	 	REFERENCES		     plan (pid)
		ON DELETE			    CASCADE);