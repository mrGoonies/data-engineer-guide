# Bootcamp Data Engineer

1. [Introducción](#introducción)
2. [Skills fundamentales de un Data Engineer](#skills-fundamentales-de-un-data-engineer)
3. [Almacenamiento de datos](#almacenamiento-de-datos)
4. [Procesamiento de datos](#procesamiento-de-datos)
5. [Lenguaje SQL](#lenguaje-sql)
5. [Contribuciones](#contribuciones)
6. [Licencia](#licencia)

# Introducción

Para dar un poco de contexto sobre lo que es un ingenier@ de datos, este es el profesional encargado de diseñar, construir y mantener los sistemas de información que permiten a una organización gestionar sus datos y tomar decisiones en base a estos, esto quiere decir en otras palabras, un data engineer se encargara de extraer la materia prima y prepararla para los diferentes roles de una organización o específicamente, profesionales del mundo de los datos, ademas estará fuertemente comunicado con los científicos de datos, ML Engineer y los analistas de datos, ya que sin ellos una organización no podrá explotar los datos que provienen de un data engineer.

> **_NOTE:_** Un Data Engineer es como un extractor de petroleo, el científico de datos es el refinador y el analista de datos es el que vende el combustible.




# Skills fundamentales de un Data Engineer
En la actualidad existen varios roadmap para convertite en un data engineer y en ocasiones se olvidan las habilidades fundamentales, ya que priorizan el aprendizaje de herramientas como lo puede ser *PySpark*, *Airflow*, *contendedores*, *orquestadores*, CI/CD, entre otras cosas que debería tener un data engineer para poder desempeñarse en el mundo real, pero cada empresa trabaja de una forma distinta y es por eso que tener unas bases solidas es la prioridad para cualquier aspirante a este rol, por lo que, en este apartado se mencionaran las habilidades que necesitas tener como un data engineer aspirante a un puesto profesional.

- Habilidades de comunicación
    - Debemos conocer el negocio y saber comunicarnos con distintos perfiles, ya sean técnicos como no técnicos, por ende conocer nuestra audiencia es fundamental y sobretodo el como les presentaremos la información. Existe un diagrama el cual representa muy bien este punto.
    ![Pirámide para comunicar información efectivamente](https://i.pinimg.com/736x/2d/47/ca/2d47ca71cb7fc10f188313f3b7685233.jpg)

    - Se debe priorizar la empatía con nuestra audiencia, esto nos permitirá entender sus necesidades y poder comunicar la información de manera efectiva.

- Habilidades técnicas
    - Tener fundamentos de programación sólidos (Bucles, condicionales, funciones, clases, etc) y saber algún lenguaje de programación, para este punto recomiendo saber Python, ya que es un lenguaje que posee un gran ecosistema para el mundo de los datos y es muy fácil de aprender.

    - Conocer sobre bases de datos relaciones y no relaciones. También aprender sobre el modelado de datos y diagrama Entidad Relación (ER).

    - SQL es por excelencia el lenguaje que mas vas a utilizar como data engineer, ya que esta implementado en distintas herramientas como lo puede ser DBT y es por esto que es fundamental conocer sobre DDL (Definition Data Language) y DML (Data Manipulation Language).

    - En la era moderna, la gran mayoría de las empresas trabajan con la nube, y es por esto que te recomienda que elijas aprender algún proveedor de nube como lo puede ser **AWS**, **Azure** o GCP. Generalmente utilizaras servicios como computo (Maquinas Virtuales), servicios basados en Serverless, almacenar datos en Data Lakes (como lo puede ser un S3 de AWS), bases de datos administradas (como lo puede ser un RDS de AWS), entre otros servicios que te permitirán construir una arquitectura de datos robusta. No te centres en obtener una certificación, enfocarte en saber como aplicar estos servicios y aplicarlas en un proyecto personal o una prueba de concepto.

# Almacenamiento de datos
Desde tiempos inmemorables, el ser humano ha buscado la manera de almacenar información con el objetivo de poder consultarla en un futuro o trabajar con ella. En la actualidad existen distintas formas de poder almacenar datos y cada una de ellas tiene sus ventajas y desventajas, por ende juega un papel importante para un Data Engineer, ya que nos permitirá saber como podemos acceder y trabajar con los datos. En esta sección se hablaran de las formas mas comunes de almacenar datos, tipos de bases de datos y como se relacionan con el mundo de los datos.

## Tipos de bases de datos
En la actualidad existen tres tipos de bases de datos, las cuales son:

- Bases de datos relacionales
- Bases de datos no relacionales
- Bases de datos híbridas

> **_NOTE:_**  En la actualidad las mas utilizadas son las relacionales y no relacionales, pero esto dependerá netamente de la necesidad de la organización.

> **_NOTE:_** En la actualidad las mas utilizadas son las relacionales y no relacionales, pero esto dependerá netamente de la necesidad de la organización.

> **_NOTE:_** Las bases de datos híbridas son una mezcla de las dos anteriores, por lo que no se profundizara en este tipo de bases de datos, ya que no son tan utilizadas en organizaciones que tengan un flujo de trabajo estandarizado, para que comprendas un poco a lo que me refiero, este tipo de datos es como el Svelte o Quiwk de las bases de datos, son muy buenas pero no son tan utilizadas como lo puede ser React, Vue o Angular.

### Bases de datos relacionales
Este tipo de base de datos surgió en la década del 70 por un investigador de IBM el cual estaba buscando una forma de almacenar datos de manera estructurada, por lo que creo el modelo relacional. Este modelo se basa en la álgebra relacional y la teoría de conjuntos. Este modelo permite  la creación de tablas, las cuales están relacionadas entre si por medio de *llaves primarias* y *foráneas*, esto quiere decir que este tipo de base de datos es muy buena para almacenar datos estructurados, pero no es tan buena para almacenar datos no estructurados, ya que no es su fuerte.

> **_NOTE:_**  Para documentar una base de datos relacional se utiliza el diagrama Entidad Relación (ER), el cual es muy utilizado en el mundo de los datos y permite entender de manera rápida la estructura de la base de datos.

> **_NOTE:_**  El termino CRUD (Create, Read, Update, Delete) es muy utilizado en el mundo de las bases de datos relacionales, ya que son las operaciones básicas que se pueden realizar en una base de datos relacional y esto también aplica para las bases de datos no relacionales , y a sistemas que no son bases de datos como lo puede ser un API REST.

> **_NOTE:_**  Para interactuar con una base de datos relación haremos uso de un lenguaje (previamente mencionado) llamado SQL (Structured Query Language), el cual es un lenguaje declarativo.

### Bases de datos no relacionales
Este tipo de bases de datos surgió en la década del 2000, ya que se necesitaba una forma de almacenar datos no estructurados de forma eficiente, otra característica es su flexibilidad, ya que no poseen un SCHEMA (estructura) definida. Existen distintos tipos de bases de datos no relacionales, las cuales son:

- Bases de datos orientadas a documentos (MongoDB, CouchDB, etc)
    - Almacenan datos en documentos, los cuales pueden ser de distintos tipos como lo puede ser JSON, XML, etc.

- Bases de datos orientadas a grafos (Neo4j, etc)
    - Almacenan datos en nodos y relaciones, por lo que son muy buenas para almacenar datos que tengan una relación entre si.

- Bases de datos orientadas a columnas (Cassandra, etc)
    - Almacenan datos en columnas, por lo que son muy buenas para almacenar datos que tengan una relación entre si.

- Bases de datos orientadas a llave-valor (Redis, etc)
    - Almacenan datos en llaves y valores, por lo que son muy buenas para almacenar datos que tengan una relación entre si.

### Tendencias modernas
1. Data Warehouse
    - Es un repositorio que almacena datos previamente procesados, los cuales se utilizan para realizar análisis y generar informes o dashboard, entrenamiento de modelos de ML, etc. Este tipo de repositorio de datos se basa en el modelo relacional, por lo que es muy bueno para almacenar datos estructurados.
     
2. Data Lake
    - Es un repositorio que almacena datos en bruto y listos para ser procesados, por lo que es muy bueno para almacenar datos no estructurados. Este tipo de repositorio de datos se basa en el modelo no relacional, por lo que es muy bueno para almacenar datos no estructurados.

3. Data LakeHouse
    - Es un repositorio que almacena datos en bruto y procesados (combinación entre un Data Warehouse y Data Lake), por lo que es muy bueno para almacenar datos estructurados y no estructurados. Este tipo de repositorio de datos se basa en el modelo relacional y no relacional.

> **_NOTE:_**  En la actualidad existen distintas herramientas que permiten crear un Data Warehouse, Data Lake o Data LakeHouse, las cuales son:
> - Data Warehouse: Redshift, Snowflake, BigQuery, etc.
> - Data Lake: S3, Azure Data Lake, etc.
> - Data LakeHouse: Delta Lake, etc.

4. Seguridad y cumplimiento de normas
    - En la actualidad existen distintas normas que regulan el uso de datos, por lo que es fundamental que un data engineer conozca sobre estas normas y como aplicarlas en un proyecto de datos, ya que de lo contrario puede traer problemas legales a la organización. Algunas de las normas mas conocidas son:
        - GDPR
        - HIPAA
        - CCPA
        - LGPD
        - etc.

# Procesamiento de datos
El procesamiento de datos es una técnica que permite transformar datos brutos en información útil para una organización y su toma de decisiones. En la actualidad existen distintas formas de procesar datos y cada una de ellas tiene sus ventajas y desventajas, por ende juega un papel importante para un Data Engineer, ya que nos permitirá saber como podemos procesar los datos. En esta sección se hablaran de las formas mas comunes de procesar datos, tipos de procesamiento y como se relacionan con el mundo de los datos.

## Tipos de procesamiento de datos
En la actualidad existen tres tipos de procesamiento de datos, los cuales son:

- Procesamiento de datos por lotes (Batch)
    - Este tipo de procesamiento de datos se basa en procesar datos en un intervalo de tiempo definido (como lo puede ser la cartola de cuenta bancaria), por lo que es muy bueno para procesar datos que no necesitan ser procesados en tiempo real. Este tipo de procesamiento de datos se basa en el modelo relacional, por lo que es muy bueno para procesar datos estructurados.

- Procesamiento de datos en tiempo real (Streaming)
    - Este tipo de procesamiento de datos se basa en procesar datos en tiempo real (como lo puede ser un sistema de detección de fraude), por lo que es muy bueno para procesar datos que necesitan ser procesados en tiempo real. Este tipo de procesamiento de datos se basa en el modelo no relacional, por lo que es muy bueno para procesar datos no estructurados.

## Sistema OLAP y OLTP
Ambos sistemas son muy utilizados en un mundo basado en datos, su conocimiento es fundamental para reconocer cuando se aplica cada uno de ellos. A continuación, se detallan las características de cada uno de ellos:

- OLAP (Online Analytical Processing)
    - Es un procesamiento analítico de los datos, por lo cual se realizan consultas para obtener información y analizar los resultados con el objetivo de entregar informes o dashboard para la toma de decisiones.

- OLTP (Online Transaction Processing)
    - Es una tecnología que permite almacenar datos de forma rápida y segura, por lo cual se realizan operaciones de inserción, actualización y eliminación de datos. Su uso más común se encuentra en el registro financiero, reservas de vuelos, suscripciones a servicios, comentario de clientes, etc. Para este tipo de sistemas se utilizan bases de datos relacionales por eficiencia a la hora de realizar transacciones.

## Data Pipelines
Es un concepto aplicado a todos los procesos que se realizan en el mundo de los datos. Un data pipeline es un conjunto de procesos que permiten extraer, transformar y cargar datos desde una o varias fuentes de datos a un destino de datos o comúnmente llamado data warehouse. En la actualidad existen distintas formas de crear un data pipeline, las cuales son:

- Data Pipeline basado en código
    - Este tipo de data pipeline se basa en escribir código para realizar las distintas tareas que se requieran, por lo que es muy bueno cuando nuestro proceso de ETL o ELT sean escalables, personalizadas, tener un control total sobre el proceso. Para este tipo de data pipeline se utilizan lenguajes de programación como lo puede ser **Python**, Java, Scala, etc.

- Data Pipeline basado en herramientas
    - Al igual que un data pipeline basado en código, si necesitamos crear un proceso rápidamente y no necesitamos personalizarlo, también podemos hacer uso de orquestadores como los puede ser Airflow y Apache NiFi, y estandarizar procesos.

# Lenguaje SQL
SQL es un lenguaje para interactuar con bases de datos relacionales y por ende, bastante necesario para poder desempeñarse como un data engineer. Para tener algo de contexto, este lenguaje fue desarrollado por IBM en la década del 70 com un refinamiento del lenguaje propuesto por el creador del modelo relacional, ademas se puede decir que este lenguaje es declarativo, esto quiere decir que nos enfocaremos en especificar lo que queremos hacer y no tanto en como lo queremos hacer. En esta sección se hablaran de las formas mas comunes de utilizar SQL, tipos de bases de datos y como se relacionan con el mundo de los datos.

Para poder arrancar a trabajar con este lenguaje se recomienda tener instalado un motor de bases de datos relacional en tu maquina local, para esto, utilizaremos el RDBMS **MySQL** pero existen otros motores como los pueden ser **PostgreSQL**, **SQL Server**, **Oracle**, etc. Existen dos formas de instalar este motor de bases de datos, las cuales son:

1. Instalación local
    - Para esto, debes descargar el instalador de MySQL desde su pagina oficial, el cual lo puedes encontrar [aquí](https://dev.mysql.com/downloads/installer/). Una vez descargado, debes seguir los pasos que te indica el instalador y listo, ya tienes instalado MySQL en tu maquina local. Te recomiendo [instalar el motor de base de datos](https://dev.mysql.com/downloads/mysql/), el cual viene por defecto con el cliente basado en shell, ya que es muy útil para aprender SQL.

    - Una vez instalado, haremos uso del cliente basado en shell para poder interactuar con el motor de base de datos, para esto, debes ejecutar el siguiente comando en tu terminal:
    ```bash
    mysql -u root -p
    ```


2. Contenedor
    - Se recomienda tener instalado Docker en tu maquina local, ya que es una herramienta muy útil para poder trabajar con contenedores. Una vez instalado, debes ejecutar el siguiente comando en tu terminal:
    ```bash
    docker run --name mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:latest
    ```
    - Este comando creara un contenedor con el nombre **mysql** y la contraseña **123456** para el usuario **root**. Una vez creado el contenedor, debes ejecutar el siguiente comando para poder acceder al contenedor:
    ```bash
    docker exec -it mysql bash
    ```
    - Este comando te permitirá acceder al contenedor y ejecutar comandos en el, por lo que debes ejecutar el siguiente comando para poder acceder a la base de datos:
    ```bash
    mysql -u root -p
    ```


### Sentencias básicas
Ahora escribiremos algunas sentencias en SQL para entrar en calor y ver su funcionamiento, para esto, debes ejecutar el siguiente comando en tu terminal:

> **_NOTE:_** Yo escribo todas las sentencias o palabras reservadas del lenguaje SQL en mayúsculas, pero esto es opcional, ya que el lenguaje SQL es insensible a mayúsculas y minúsculas. Pero es altamente recomendable para mejorar la legibilidad del código.

- Mostrar todas las bases de datos existentes
```bash
SHOW DATABASES;
```

- Especiificar la base de datos a utilizar
```bash
USE <nombre-de-la-base-de-datos>;
```

- Obtener la versión del motor de base de datos
```bash
SELECT VERSION();
```

- Obtener la fecha y hora actual del servidor MySQL
```bash
SELECT NOW();
```

- Para salir del cliente basado en shell
```bash
exit
```

### Tipos de datos en MySQL
En la actualidad existen distintos tipos de datos que se pueden almacenar en una base de datos, por lo que es fundamental conocerlos para poder utilizarlos de manera correcta sobretodo cuando tengamos que crear tablas. A continuación, se detallan los tipos de datos que se pueden almacenar en MySQL:

- Cadenas de texto
    Alguno de los tipos de datos poseen un tamaño fijo y otros variables, es decir, algunos tipos rellenaran con espacios en blanco hasta completar el tamaño fijo y otros solo los caracteres que se necesiten.

    - **CHAR**
        - Es un tipo de dato de tamaño fijo, por lo que rellenara con espacios en blanco hasta completar el tamaño fijo.
        - El tamaño máximo es de *255* caracteres.
        - Se utiliza para almacenar cadenas de texto de longitud fija, un ejemplo puede ser las siglas de un estado, ya que todas estas poseen un largo similar.
        - Ejemplo de como definir un campo de tipo CHAR con una longitud de 10 caracteres:
        ```bash
        CHAR(10)
        ```
    - **VARCHAR**
        - Es un tipo de dato de tamaño variable, por lo que solo rellenara con los caracteres que se necesiten.
        - El tamaño máximo es de *65.535* caracteres.
        - Se utiliza para almacenar cadenas de texto de longitud variable, un ejemplo puede ser el nombre de una persona, ya que este puede tener un largo variable.
        - Ejemplo de como definir un campo de tipo VARCHAR con una longitud de 10 caracteres:
        ```bash
        VARCHAR(10)
        ```

- Texto
    Este tipo de datos se diferencian de los anteriores, ya que no poseen un tamaño fijo o variable, por lo que no se especifica un tamaño máximo, pero internamente poseen un tamaño máximo.

    - **TINYTEXT**
        - El tamaño máximo es de *255* caracteres.
        - Ejemplo de como definir un campo de tipo TINYTEXT:
        ```bash
        TINYTEXT
        ```

    - **TEXT**
        - El tamaño máximo es de *65.535* caracteres.
        - Ejemplo de como definir un campo de tipo TEXT:
        ```bash
        TEXT
        ```
    - **MEDIUMTEXT**
        - El tamaño máximo es de *16.777.215* caracteres.
        - Ejemplo de como definir un campo de tipo MEDIUMTEXT:
        ```bash
        MEDIUMTEXT
        ```
    - **LONGTEXT**
        - El tamaño máximo es de *4.294.967.295* caracteres.
        - Ejemplo de como definir un campo de tipo LONGTEXT:
        ```bash
        LONGTEXT
        ```
    
    > **_NOTE:_**  Consideracion a tener en cuenta cuando trabajamos con estos tipos de datos:
    > - Si superamos el tamaño máximo, los datos serán truncados.
    > - Los espacio en blanco al final de la cadena de texto no son eliminados y estos cuentan como caracteres. En caso contrario a los tipos de datos de cadenas de texto.
    > - Los tipos de datos de texto son mas lentos que los tipos de datos de cadenas de texto.
    > - Cada motor de base de datos implementa este tipos de datos a su forma, por eso es recomendable leer la documentación del motor de base de datos que estemos utilizando.

- Números
    MySQL nos provee de dos conjuntos de tipos de datos numéricos, los cuales son:

    - **Enteros**
        - *TINYINT*
            - El tamaño máximo es de *255* caracteres.
            - Podemos hacer uso de la palabra reservada **UNSIGNED** para especificar que el campo solo puede almacenar números positivos. El cual tendremos un rango de *0* a *255* o a su vez podemos hacer uso de la palabra reservada **SIGNED** (que viene por defecto) para especificar que el campo puede almacenar números positivos y negativos. El cual tendremos un rango de *-128* a *127*.

        - *SMALLINT*
            - El tamaño máximo es de *65.535* caracteres.
            - Podemos hacer uso de la palabra reservada **UNSIGNED** para especificar que el campo solo puede almacenar números positivos. El cual tendremos un rango de *0* a *65.535* o a su vez podemos hacer uso de la palabra reservada **SIGNED** (que viene por defecto) para especificar que el campo puede almacenar números positivos y negativos. El cual tendremos un rango de *-32.768* a *32.767*.
        
        - *MEDIUMINT*
            - El tamaño máximo es de *16.777.215* caracteres.
            - Podemos hacer uso de la palabra reservada **UNSIGNED** para especificar que el campo solo puede almacenar números positivos. El cual tendremos un rango de *0* a *16.777.215* o a su vez podemos hacer uso de la palabra reservada **SIGNED** (que viene por defecto) para especificar que el campo puede almacenar números positivos y negativos. El cual tendremos un rango de *-8.388.608* a *8.388.607*.
        
        - *INT*
            - El tamaño máximo es de *4.294.967.295* caracteres.
            - Podemos hacer uso de la palabra reservada **UNSIGNED** para especificar que el campo solo puede almacenar números positivos. El cual tendremos un rango de *0* a *4.294.967.295* o a su vez podemos hacer uso de la palabra reservada **SIGNED** (que viene por defecto) para especificar que el campo puede almacenar números positivos y negativos. El cual tendremos un rango de *-2.147.483.648* a *2.147.483.647*.
        
        - *BIGINT*
            - El tamaño máximo es de *18.446.744.073.709.551.615* caracteres.
            - Podemos hacer uso de la palabra reservada **UNSIGNED** para especificar que el campo solo puede almacenar números positivos. El cual tendremos un rango de *0* a *18.446.744.073.709.551.615* o a su vez podemos hacer uso de la palabra reservada **SIGNED** (que viene por defecto) para especificar que el campo puede almacenar números positivos y negativos. El cual tendremos un rango de *-9.223.372.036.854.775.808* a *9.223.372.036.854.775.807*.
        
    > **_NOTE:_** Consideracion a tener en cuenta cuando trabajamos con estos tipos de datos:
    > - Si superamos el tamaño máximo, los datos serán truncados.
    > - Los tipos de datos de números son mas rápidos que los tipos de datos de texto (Los motores de RDBMS están optimizados para trabajar con este tipo de datos).
    > - Es recomendable utilizar el tipo de dato que mejor se adapte a la necesidad, ya que si utilizamos un tipo de dato que no se adapte a la necesidad, estaremos desperdiciando recursos.

    - **Decimales**
        Esta categoría de tipos de datos nos permite almacenar números con decimales, por lo que es muy bueno para almacenar valores monetarios, ya que no perderemos precisión y podemos asignar el tamaño de los decimales que queremos almacenar.
        - *FLOAT*
            - El tamaño máximo es de *4 bytes*.
            - Podemos hacer uso de la palabra reservada **UNSIGNED** para especificar que el campo solo puede almacenar números positivos. El cual tendremos un rango de *0* a *4.294.967.295* o a su vez podemos hacer uso de la palabra reservada **SIGNED** (que viene por defecto) para especificar que el campo puede almacenar números positivos y negativos. El cual tendremos un rango de *-2.147.483.648* a *2.147.483.647*.
            

            - *float(10,2) -> 1234567890.12*
        
        - *DOUBLE*
            - El tamaño máximo es de *8 bytes*.
            - Podemos hacer uso de la palabra reservada **UNSIGNED** para especificar que el campo solo puede almacenar números positivos. El cual tendremos un rango de *0* a *18.446.744.073.709.551.615* o a su vez podemos hacer uso de la palabra reservada **SIGNED** (que viene por defecto) para especificar que el campo puede almacenar números positivos y negativos. El cual tendremos un rango de *-9.223.372.036.854.775.808* a *9.223.372.036.854.775.807*.

            - *double(10,2) -> 1234567890.12*
          

- Datos Temporales
    Este tipo de dato hace referencia a fechas y/u horas y se diferencian de los anteriores, ya que no poseen un tamaño fijo o variable, por lo que no se especifica un tamaño máximo, pero internamente poseen un tamaño máximo. A continuación, se detallan los tipos de datos temporales que se pueden almacenar en MySQL:

    - **DATE**
        - Su formato por defecto es *YYYY-MM-DD*.
        - Posee un rango de *1000-01-01* a *9999-12-31*.

    - **TIME**
        - Su formato por defecto es *HHH:MI:SS*.
        - Posee un rango de *-838:59:59* a *838:59:59*.      

    - **YEAR**
        - Su formato por defecto es *YYYY*.
        - Posee un rango de *1901* a *2155*.  
    
    - **DATETIME**
        - Su formato por defecto es *YYYY-MM-DD HH:MI:SS*.
        - Posee un rango de *1000-01-01 00:00:00* a *9999-12-31 23:59:59*.
    
    - **TIMESTAMP**
        - Su formato por defecto es *YYYY-MM-DD HH:MI:SS*.
        - Posee un rango de *1970-01-01 00:00:01* a *2038-01-19 03:14:07*.
    
    > **_NOTE:_**  La diferencia entre **DATETIME** y **TIMESTAMP** es que **DATETIME** almacena la fecha y hora en la zona horaria especificada y **TIMESTAMP** almacena la fecha y hora en UTC (Coordinated Universal Time). Por lo que **TIMESTAMP** es muy bueno para almacenar la fecha y hora en la que se realizo una transacción, ya que no importa la zona horaria del usuario, siempre se almacenara en UTC.

    Algunos ejemplos donde podemos utilizar este tipo de datos son:

    - Fecha de nacimiento.
    - Fecha de creación, modificación y eliminación de un registro.
    - Fecha de inicio y termino de un evento.
    - Fecha y hora del envío de un producto.

Estos son algunos tipos en los cuales pasaremos la mayor parte del tiempo trabajando, pero existen otros tipos de datos que se pueden almacenar en MySQL, los cuales son:

- **ENUM**
    - Este tipo de dato nos permite almacenar una lista de valores, por lo que es muy bueno para almacenar datos que tengan un conjunto de valores definidos. Estos pueden ser como lo puede ser el estado civil de una persona, ya que este solo puede tener un conjunto de valores definidos.
    - Ejemplo de como definir un campo de tipo ENUM:
    ```bash
    ENUM('valor1', 'valor2', 'valor3')
    ```

- **BINARY**
    - Este tipo de dato nos permite almacenar datos binarios, como los puede ser una imagen, un archivo, etc.

- **JSON**
    - Este tipo de dato nos permite almacenar datos en formato JSON, por lo que es muy bueno para almacenar datos no estructurados.

- **BOOLEAN**
    - Este tipo de dato nos permite almacenar datos booleanos, como los puede ser *true* o *false*.

Ahora que hemos visto de forma gradual los tipos de datos que podemos usar en MySQL (tambien existen en otros motores pero pueden haber extensiones), es hora de aprender a crear tablas, en conjunto de consideraciones a tener en cuenta.

### Crear tablas





# Contribuciones
¡Gracias por tu interés en contribuir al repositorio! Tu participación es importante ya que nos ayudas a todos los participantes del Bootcamp y también las personas nuevas que encuentren este repo, ademas contribuyes al aprendizaje conjunto de la comunidad. A continuación, se detallan las pautas para contribuir:

## Cómo contribuir

1. Haz un fork del repositorio.
   - Haz clic en el botón "Fork" en la esquina superior derecha de la página para crear tu propia copia del repositorio en tu cuenta de GitHub.
2. Clona el repositorio en tu máquina local.
 ```bash
 git clone https://github.com/mrGoonies/data-engineer-guide
 ```
3. Crea una rama para tu contribución.
 ```bash
 git checkout -b <nombre-del-aporte>
 ```
4. Haz tus cambios en tu maquina local.
5. Hacer commit de tus cambios.
 ```bash
 git commit -m "Add-Aporte: Descripción del aporte"
 ```
6. Sube tus cambios a tu repositorio.
 ```bash
 git push origin <nombre-del-aporte>
 ```
7. Ve a tu repositorio en GitHub y crea un pull request.
   - Haz clic en el botón "Compare & pull request".
   - Escribe un título y una descripción significativos para tu pull request.
   - Haz clic en el botón "Create pull request".

## Pautas para contribuir 
- Asegúrate de que tu contribución esté bien documentada.
- **No dudes en proponer mejoras o sugerencias a la estructura y contenido existentes.**



