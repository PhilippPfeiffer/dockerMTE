#MTE

This Multimedia Tour Editor is a Webapp that lets you search for Cities and builds a route that takes you along the most important attractions and tourist spots, while also providing information on the City and presenting images and videos in relation to it.
The App is deployed using a Glassfish 4.0 Server.

Pull the image using:

sudo docker pull ppfeiffer/dockermte

Run the image in a container:

sudo docker run -d -p 4848:4848 -p 8080:8080 -p 8181:8181 ppfeiffer/dockermte

Use a browser to access 127.0.0.1:8080/mte to get to the webapp or 127.0.0.1:4848 to get to the admin console.

Port 4848 can be used to enter the server console. The current password for the admin user is “admin” and should be changed after the first deployment. Port 8080 is used for http connections to the Webapp. Port 8181 is used for https connections to the Webapp. 
