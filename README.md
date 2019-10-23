# Project


## NiFi UI
To facilitate accommodating multiple instances of NiFi on one host, a fixed and exposed port is not specified in the `docker-compose.yml` configuration. A user can find the host allocated port by performing `docker-compose port nifi 8080`. This will return output similar to `0.0.0.0:32787`, indicating that the UI port, 8080, is available on all network interfaces of the host at port 32787. If you are running the Compose environment on your local system, this would create an address of http://localhost:32787/nifi/.


## Steps
1. Run docker-compose:
`docker-compose up --build`
2. Get which port is NiFi running:
`docker-compose port nifi 8080`
3. Access the UI by using the given port:
e.g. `0.0.0.0:32787`
