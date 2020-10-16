create user PF1 identified by PF1
create user PF2 identified by PF2
create user PF3 identified by PF3
grant create SESSION, create TABLE, create view , create SEQUENCE TO PF1;
grant create SESSION, create TABLE, create view , create SEQUENCE TO PF2;
grant create SESSION, create TABLE, create view , create SEQUENCE TO PF3;
alter user PF1 quota 50m on system;
alter user PF2 quota 50m on system;
alter user PF3 quota 50m on system;