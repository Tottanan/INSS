CREATE OR REPLACE TRIGGER EMPLOYER_BRI 
BEFORE INSERT ON EMPLOYER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDEMPLOYER IS NULL THEN
      SELECT EMPLOYER_SEQ.NEXTVAL INTO :NEW.IDEMPLOYER FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/