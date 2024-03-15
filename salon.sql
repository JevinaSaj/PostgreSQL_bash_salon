------------------------------------------------------------
1.Create Database and connect to it
------------------------------------------------------------
psql --username=freecodecamp --dbname=postgres;

CREATE DATABASE salon;

\c salon

------------------------------------------------------------
2. Create tables as required conditions
------------------------------------------------------------

CREATE TABLE customers (customer_id SERIAL NOT NULL, phone VARCHAR(15) UNIQUE, name VARCHAR(30));

CREATE TABLE appointments(appointment_id SERIAL NOT NULL, customer_id INT NOT NULL, service_id INT NOT NULL, time VARCHAR(15));

CREATE TABLE services(service_id SERIAL NOT NULL, name VARCHAR(30));

------------------------------------------------------------
3. Primary Key and Foreign Key assignment
------------------------------------------------------------
ALTER TABLE customers ADD PRIMARY KEY(customer_id)
ALTER TABLE appointments ADD PRIMARY KEY(appointment_id)
ALTER TABLE services ADD PRIMARY KEY(service_id)
ALTER TABLE appointments ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ALTER TABLE appointments ADD FOREIGN KEY(service_id) REFERENCES services(service_id)

------------------------------------------------------------
4. Create rows as required 
------------------------------------------------------------
INSERT INTO services(name) VALUES('Mens hair cut'), ('Ladies hair cut'), ('Kids hair cut');

------------------------------------------------------------
5. Create script file as required 
------------------------------------------------------------
touch salon.sh

------------------------------------------------------------
6.Give executable permission to shell scipt files
------------------------------------------------------------
chmod +x salon.sh

------------------------------------------------------------
7.Copy & Run shell script files (NOTE : insert data first)
------------------------------------------------------------
./salon.sh
