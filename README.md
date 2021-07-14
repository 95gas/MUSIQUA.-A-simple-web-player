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

---


## Database ( relational schemda )
![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/DBB/relational%20diagram.png)


---

## Deployment over Tomcat
For all the web hosting platforms you will be asked for creating a profile. 
Before starting, create two new repositories on your github account: one for the app and one for the server. Place in the respective repository the files included in the 'app' folder and the ones in the 'server' folder.  


---

## Bugs known

In the OFFLINE USE v-cale
