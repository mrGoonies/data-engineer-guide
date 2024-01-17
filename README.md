# Bootcamp Data Engineer

1. [Introducción](#introducción)
2. [Skills fundamentales de un Data Engineer](#skills-fundamentales-de-un-data-engineer)
3. [Contribuciones](#contribuciones)
4. [Licencia](#licencia)

# Introducción

Para dar un poco de contexto sobre lo que es un ingenier@ de datos, este es el profesional encargado de diseñar, construir y mantener los sistemas de información que permiten a una organización gestionar sus datos y tomar decisiones en base a estos, esto quiere decir en otras palabras, un data engineer se encargara de extraer la materia prima y prepararla para los diferentes roles de una organización o específicamente, profesionales del mundo de los datos, ademas estará fuertemente comunicado con los científicos de datos, ML Engineer y los analistas de datos, ya que sin ellos una organización no podrá explotar los datos que provienen de un data engineer.

> **_NOTE:_** Un Data Engineer es como un extractor de petroleo, el científico de datos es el refinador y el analista de datos es el que vende el combustible.




# Skills fundamentales de un Data Engineer
En la actualidad existen varios roadmap para convertite en un data engineer y en ocasiones se olvidan las habilidades fundamentales, ya que priorizan el aprendizaje de herramientas como lo puede ser *PySpark*, *Airflow*, *contendedores*, *orquestadores*, CI/CD, entre otras cosas que debería tener un data engineer para poder desempeñarse en el mundo real, pero cada empresa trabaja de una forma distinta y es por eso que tener unas bases solidas es la prioridad para cualquier aspirante a este rol, por lo que, en este apartado se mencionaran las habilidades que necesitas tener como un data engineer aspirante a un puesto profesional.

- Habilidades de comunicación
    - Debemos conocer el negocio y saber comunicarnos con distintos perfiles, ya sean tecnicos como no tecnicos, por ende conocer nuestra audiencia es fundamental y sobretodo el como les presentaremos la información. Existe un diagrama el cual representa muy bien este punto.
    ![Pirámide para comunicar información efectivamente](https://i.pinimg.com/736x/2d/47/ca/2d47ca71cb7fc10f188313f3b7685233.jpg)

    - Se debe priorizar la empatía con nuestra audiencia, esto nos permitirá entender sus necesidades y poder comunicar la información de manera efectiva.

- Habilidades técnicas
    - Tener fundamentos de programación sólidos (Bucles, condicionales, funciones, clases, etc) y saber algún lenguaje de programación, para este punto recomiendo saber Python, ya que es un lenguaje que posee un gran ecosistema para el mundo de los datos y es muy fácil de aprender.

    - Conocer sobre bases de datos relaciones y no relaciones. También aprender sobre el modelado de datos y diagrama Entidad Relación (ER).

    - SQL es por excelencia el lenguaje que mas vas a utilizar como data engineer, ya que esta implementado en distintas herramientas como lo puede ser DBT y es por esto que es fundamental conocer sobre DDL (Definiton Data Language) y DML (Data Manipulation Language).

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



