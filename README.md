## Authentication Provider

#### Release Version: 0.0.1-Beta 
##
## Software Requirements
1. Docker    

## Build Setup

#### 1. Setting Up Project In Intellij
   a.  [Import Maven Project Intellij](https://www.jetbrains.com/help/idea/maven-support.html#maven_import_project_start)  
   b. [Setup Auto Build](https://zeroturnaround.com/software/jrebel/quickstart/intellij/enable-automatic-compilation-in-intellij-idea/)  
   c. If Auto Build is not working for some reason Build can executed using ctlr+f9 

#### 2. XI Script Goals
<ul>
<li>Build - xi.sh build</li>
<li>Run - xi.sh start</li>
<li>Restart - xi.sh restart</li>
<li>Stop - xi.sh stop</li>
</ul>

#### 3. Liquibase
Liquibase is data migration library. Documentation for Liquibase can be found at following link:
 
[Liquibase Documentation](https://www.liquibase.org/documentation/index.html)

####4. Application Port
Application is running on port number 8081

####5. Postgres Port
Postgres is running on Port 5433