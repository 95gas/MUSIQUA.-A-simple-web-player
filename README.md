# MUSIQUA - A web music player

 ![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/home.png)
 
---

## Introduction

Here we present our project about the implementation of a web music player realized for the course Web Programming at ENSSAT ( in Lannion, France ). The project has been developed by exploiting the JEE technology and designed by taking into account the MDV ( Model View Controller ) software design pattern.

#### Stackholders
There are three kind of users involved in the use of the web player:
* Customer, the normal user of the application. 
* Administrator: can edit the info of the clients.
* Music administrator: can edit the music library.

For every kind of user the features offered by the app are differents. The interface to show is decided at the logging phase by checking the identity of the user. 

#### Features
Our project consists of the following feature:
* Top songs showed at the home page.
![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/topsongs.png)
* Log in page
  ![Image of calendar view]( https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/login.png)
* Sign up page
 ![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/signup.png)
* Music library page:
  * ALbum page
  ![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/Client%20interface/albumClient.png)
  
   * List music
   ![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/Client%20interface/listmusicClient.png)
 
   * List playlists
    ![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/Client%20interface/myplaylistClient.png)
    
* Profile page
* For admins:
  * List of the users
  * Page for managing the music library ( add, delete and rename ). The operations are intended both for the albums and the list of the songs. 

More pictures of the interfaces are placed in the folder 'Interfaces'.


---

## Technologies
FRONTEND:
* Javacript
* jQuery
* jPlayer for the playing of the music. 

BACKEND:
* Java EE
* MySQL, for storing the data application

DEVELOPMENT:
* Eclipse
* Tomcat v9.0
* JDK v16

---


## Database ( relational schema )
![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/DBB/relational%20diagram.png)


---

## Deployment over Tomcat v 9.0
Follow the following steps to deploy ( test ) the application over Tomcat v9.0:
1. [Install SDK V16](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html)
2. Install Tomcat v9.0 ( later versions are not working! ). In the installation process 
   * Set the name and password for an admin. Remember them since you will need it later. 
   * Select the jdk previously installed by selecting its installation folder.
   ![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Docs/sdkTomcatInstallation.png)
   
4. Run the server Tomcat v9.0 and go to http://localhost:8080/manager/html/. You migh be asked to authonticate yourself. Insert the credential set earlier. 
5. In the section 'Deploy', select the .zip file of the project ( it is contained inside the 'Delivery ( WPA + report )' folder ). 
6. In the list of the application, at the top of the page, the name of the project ( = ProjetJEE ) should appear. Click on it. Enjoy. 


---

## Bugs known

* The session expires as we return to the home page after the user logged in. 
* The 'log out' option is not implemented. 
