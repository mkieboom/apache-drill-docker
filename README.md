# apache-drill-docker
Apache Drill (embedded mode) Docker image

Pull the container
docker pull mkieboom/apache-drill-docker

Run the container
docker run -it mkieboom/apache-drill-docker /drill-scripts/bootstrap.sh

Start querying
SELECT * FROM cp.`employee.json` LIMIT 5;

More examples can be found at:
https://drill.apache.org/docs/querying-a-file-system-introduction/
