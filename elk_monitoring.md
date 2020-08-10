# Monitoring: ELK Stack

A very common set of tools allowing for high level analysis when implemented together with an application or product.

Used by big companies such as Netflix and LinkedIn to accumulate user log data and discover insights which may then be used to find improvements.

Opensource - very wide variety of insights to be gained, all in realtime

For best results separate each component up, as this will prepare the system for monitoring at scale. A lot of memory is required to build the ELK architecture, so separation allows for horizontal scaling as necessary - and can include load-balancing and auto-scaling groups.



## Beats - Filebeat, Metricbeat and others...

- Shipper for multiple data forms
- Installed onto application server(s)
- Filebeat
	- Logs and other data
	- **https://www.elastic.co/guide/en/beats/filebeat/current/how-filebeat-works.html**
- Metricbeat
	- Metric (numeric) data
	- **https://www.elastic.co/guide/en/beats/metricbeat/current/how-metricbeat-works.html**


## Elasticsearch

- Search / analytics engine
- NoSQL database, which now supports SQL syntax queries however
- Built on Apache Lucene, developed in Java (prerequisite to installation)
- Very efficient at analysing at scale - through indices
- **https://www.elastic.co/elasticsearch/**


## Logstash

- Ingests and stores data
- Data is often scattered across systems and formats, and Logstash supports a variety of inputs
- Centralised location
- Will be most rapidly scaling
- Dynamically transforms and prepares data regardless of format / complexity
- Feeds into Elasticsearch
- **https://www.elastic.co/logstash**


## Kibana

- For data analytics and visualisation
- Dashboard, dedicated port 5601
- Uses **index patterns** to identify appropriate Elasticsearch index and then run searches with
	- Organised method of searching through large amounts of data
	- Similar to the method we find specific words within a dictionary
- **https://www.elastic.co/kibana**
