(a)
CREATE TABLE class (
    `name` VARCHAR(25)
);


(b)
INSERT INTO class (`name`) VALUES ("MONICA"), ("JOE"), ("CHANDLER");

(c)
SELECT * FROM class;

(d)
START TRANSACTION;

INSERT INTO class (`name`) VALUES ("ROSS");
ROLLBACK; 

INSERT INTO class (`name`) VALUES ("ROSS");
COMMIT;

START TRANSACTION;
SAVEPOINT BeforeEvilEra;
INSERT INTO class (`name`) VALUES ("EVILERA");
ROLLBACK TO BeforeEvilEra;

COMMIT;
