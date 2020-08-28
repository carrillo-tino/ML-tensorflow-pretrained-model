This Machine Learning Image Recognition Model is trained to determined if the image provided is of the exterior or the interior of a vehicle.
The result should look like this: `{interior : 0.0025, exterior : 0.9975}`

The dockerfile runs a light weight flask web application that exposes an API endpoint to classify an image (URL).


# How to run ML pretrained model locally

1. Pull down this repository
2. Install Docker on your machine (https://docs.docker.com/docker-for-windows/install/) might have to increase the memory resources to about 4gb. 
3. Build a Docker image: `docker build -t flask-sample:latest .`
4. Run the Docker image: `docker run -d -p 5000:5000 flask-sample`
5. Try to hit the endpoint to get the results: 

`curl --location --request POST 'http://localhost:5000/classify' \
--form 'url=https://cdn-ds.com/blogs-media/sites/94/2019/05/27205948/Lamborghini-Huracan-RWD-Coupe-white-side-view_o.jpg'`
