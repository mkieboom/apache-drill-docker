# apache-drill-embedded
Apache Drill (embedded mode) Docker image

#### Launch the Apache Drill Container

#####Pull the image
```docker pull mkieboom/apache-drill-embedded```

#####Run the container
```docker run -it mkieboom/apache-drill-embedded /drill-scripts/bootstrap.sh```

#####Start querying
```SELECT * FROM cp.`employee.json` LIMIT 5;```

#####More examples can be found at:
[https://drill.apache.org/docs/querying-a-file-system-introduction/](https://drill.apache.org/docs/querying-a-file-system-introduction/)


####Access the Apache Drill Web UI
Apache Drill comes with a Web management UI. In order to access this, the port needs to be forwarded to the host running Docker. To do so, please run the Docker container with the `-p` option to publish the container's port to the host as follows:

```docker run -it -p 8047:8047 mkieboom/apache-drill-embedded /drill-scripts/bootstrap.sh```

#####Using Docker on Linux
To access the Apache Drill Web UI please run:

```xdg-open http://localhost:8047```

#####Using boot2docker on Mac
When using boot2docker, there is an extra layer in between (the boot2docker virtual machine). To open the Apache Drill Web UI please run:

```open http://$(boot2docker ip):8047```

This requires version 1.7.0 of boot2docker which includes "Container Port Redirection"
