

CREATE KEYSPACE vehicle_tracker WITH REPLICATION = {'class': 'NetworkTopologyStrategy', 'dc1': 3, 'dc2': 2}



CREATE KEYSPACE vehicle_tracker WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor': 1 }
CREATE KEYSPACE home_security WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor': 1 }; 



USE home_security;


CREATE TABLE activity (
    home_id     TEXT,
    datetime    TIMESTAMP,
    event       TEXT,
    code_used   TEXT,
    PRIMARY KEY (home_id, datetime)
) WITH CLUSTERING ORDER BY (datetime DESC);


CREATE TABLE home (
    home_id         TEXT,
    address         TEXT,
    city            TEXT,
    state           TEXT,
    zip             TEXT,
    contact_name    TEXT,
    phone           TEXT,
    phone_password  TEXT,
    email           TEXT,
    main_code       TEXT,
    guest_code      TEXT,
    PRIMARY KEY (home_id)
);


CREATE TABLE location (
    vehicle_id  TEXT,
    date        TEXT,
    time TIMESTAMP,
    latitude double,
    longitude double,
    PRIMARY KEY ((vehicle_id, date), time)
) WITH CLUSTERING ORDER BY (time DESC);

# DROP TABLE activity;


INSERT INTO activity (home_id, datetime, event, code_used) 
    VALUES('H01474777', '2014-05-21 07:32:16', 'alarm set', '5599');

INSERT INTO home (home_id, address, city, state, zip, contact_name, phone, phone_password, email, main_code, guest_code) 
    VALUES('H01474777', '518 Crestview Drive', 'Bervely Hills', 'CA', '90046', 'Jed Clampett', '310-775-4011', 'oil', 'mail@mail', '55599', '7778');
