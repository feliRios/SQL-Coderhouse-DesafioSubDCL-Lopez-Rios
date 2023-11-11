-- Creacion de los usuarios

# La siguiente sentencia se encarga de crear el usuario 'tester_one' con dominio local 'localhost'.
# Ademas se le proporciona la contrasena 'Tester123@'
CREATE USER tester_one@localhost IDENTIFIED BY 'Tester123@';

# La siguiente sentencia se encarga de crear el usuario 'tester_two' con dominio local 'localhost'.
# Ademas se le proporciona la contrasena 'Tester321@'
CREATE USER tester_two@localhost IDENTIFIED BY 'Tester321@';

-- Otorgamiento de permisos
-- tester_one@localhost

# La siguiente sentencia se encarga de otorgar UNICAMENTE permisos de SOLO LECTURA sobre TODAS
# LAS TABLAS de la base de datos SUCCESS_MINDSET al usuario 'tester_one' de dominio local 'localhost'
GRANT SELECT ON success_mindset.* TO tester_one@localhost;

-- tester_two@localhost

# La siguiente sentencia se encarga de otorgar permisos de LECTURA, INSERCION y MODIFICACION sobre TODAS
# LAS TABLAS de la base de datos SUCCESS_MINDSET al usuario 'tester_two' de dominio local 'localhost'
GRANT SELECT, INSERT, UPDATE ON success_mindset.* TO tester_two@localhost;


SHOW GRANTS FOR tester_one@Localhost;

SHOW GRANTS FOR tester_two@localhost;