# Steps to install ELK

###### NB -- This is to install the ELK stack on a **single server** (simpler for learning)

When building this in a more practical environment, you will want to separate components up to make scalability more flexible, robust, easier to utilise, and cost effective.

https://dzone.com/articles/how-to-install-the-elk-stack-on-aws-a-step-by-step

https://logz.io/learn/complete-guide-elk-stack/



### Step 1 - Set up environment

1) Build instance
		- If using an EC2 instance to build this server, use one of `t2.medium` size or greater
	- `$ sudo apt-get update`
	- `$ sudo apt-get upgrade`

2) Install Java
	- `$ sudo apt-get install default-jre`

3) Verify installation and set-up
	- `$ java -version`
		- Typical output:

		openjdk version "1.8.0_151"
		OpenJDK Runtime Environment (build 1.8.0_151-8u151-b12-0ubuntu0.16.04.2-b12)
		OpenJDK 64-Bit Server VM (build 25.151-b12, mixed mode)



### Step 2 - Install & Configure Elasticsearch

1) Add repository key
	- `$ wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -`
	- `$ echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list`
	- `$ sudo apt-get update`

2) Install service
	- `$ sudo apt-get install elasticsearch`

3) Configure service, at `/etc/elasticsearch/elasticsearch.yml`
	- `network.host: "localhost"`
	- `http.port: 9200`

4) Start service
	- `$ sudo service elasticsearch start`

5) Verify set-up
	- `$ sudo curl http://localhost:9200`
	- `$ sudo systemctl elasticsearch status`



### Step 3 - Install & Configure Logstash

1) Installation
	- `$ sudo apt-get install logstash`

2) Create config file
	- `$ sudo nano /etc/logstash/conf.d/10-syslog.conf`

3) Input the following into the new config file:

	input {
	  file {
	    type => "syslog"
	    path => [ "/var/log/messages", "/var/log/*.log" ]
	  }
	}
	output {
	  stdout { 
	    codec => rubydebug
	    }
	    elasticsearch {
	      hosts => "localhost" # Use the internal IP of your Elasticsearch server
	    }
	}

4) Restart service
	- `$ sudo service logstash restart`

5) Verify set-up
	- `$ sudo curl -XGET 'localhost:9200/_cat/indices?v&pretty'`
	- `$ sudo systemctl logstash status`



### Step 4 - Install & Configure Kibana

1) Installation
	- `$ sudo apt-get install kibana`

2) Configure service, at `/etc/kibana/kibana.yml`:
	- `server.port: 5601`
	- `server.host: "localhost"`
	- `elasticseach.url: "http://localhost:9200"`

3) Start service
	- `$ sudo service kibana start`

4) Verify set-up
	- Navigate to `http://<elastic_ip>:5601`