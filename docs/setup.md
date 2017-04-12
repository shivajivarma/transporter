###Setup:

1. Install Prerequisite Software:
   * Java 1.8
   * MySql 5.6 + MySql Connector/J + workbench (http://dev.mysql.com/downloads/windows/installer/)
   * Eclipse

2. Clone the source code:
   ```bash
    git clone https://github.com/shivajivarma/transporter.git
   ```

3. Import project into eclipse.

4. Make sure eclipse is using correct JDK.

5. Database setup (https://github.com/shivajivarma/transporter/tree/master/web/src/main/resources/db-scripts)

6. Set Enviroment Variables (Paths may vary based on OS and installation): 
   * ```CLASSPATH=C:\Program Files\Java\jdk1.8.0_20\bin```
   * ```PATH=C:\Program Files\Java\jdk1.8.0_20\bin```
   * ```JAVA_HOME=C:\Program Files\Java\jdk1.8.0_20```
   
7. Run main class in WebApplication.java, It would start the embedded tomcat.