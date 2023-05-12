DELIMITER $$
CREATE PROCEDURE numbers()
BEGIN
    DECLARE x INT default 0;
    DROP TABLE IF EXISTS nums;
    CREATE TABLE nums (x INT);

    WHILE x < 10 DO
    SET x = x + 2;
    INSERT INTO nums VALUES(x);
    END WHILE;

SELECT * FROM nums;
END $$
DELIMITER ;

CALL numbers();