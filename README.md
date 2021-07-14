# MUSIQUA - A web music player

 ![Image of calendar view](https://github.com/AAsmaou/ProjetJEETeam01/blob/main/Interfaces/home.png)
 
---

## Introduction

Here we present our project about the implementation of a web music player realized for the course Web Programming at ENSSAT ( in Lannion, France ). 

### Stackholders
There are three kind of users involved in the use of the web player:
* Customer, the normal user of the application. 
* tAdministrator: can edit the info of the clients.
* Music administrator: can edit the music library.

### Features
Our project consists of the following feature:
* Log in page
* Sign up page
* 



---

## Technologies
FRONTEND:
* Vue.JS  v3.0.0
* [v-calendar](https://vcalendar.io/) package - For rendering the calendar.
* [Vue-Socket.io-Extended](https://github.com/probil/vue-socket.io-extended/tree/alpha) package - For implementing the chat.

BACKEND:
* Node.JS v14.16.0
* [LowDB](https://github.com/typicode/lowdb) database - For storing the messages.
* [socket-io](https://www.npmjs.com/package/socket.io) - For reading the messages sent on the chat.
* [Node-ical](https://www.npmjs.com/package/node-ical) - For reading the ics file from URL.
* [ical-generator](https://www.npmjs.com/package/ical-generator) - For generate the ics file from URL.

---

## Deployment over Tomcat
For all the web hosting platforms you will be asked for creating a profile. 
Before starting, create two new repositories on your github account: one for the app and one for the server. Place in the respective repository the files included in the 'app' folder and the ones in the 'server' folder.  


---

## Bugs known

In the OFFLINE USE v-cale
