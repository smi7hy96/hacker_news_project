## Documentation

## Agent Nodes

- Create EC2 instance
- Install java development kit

 `sudo apt update`
 `sudo apt search openjdk`
 `sudo apt install openjdk-8-jdk -y`

- Create AMI of your provisioned instance

On JenkinsServer

- Install 'Amazon EC2' plugin

within Amazon EC2 plugin:

- Enter AWS credentials
- Select region where JenkinsServer resides
- Enter private key to be assigned to Agent Node

Test Connection --> should get Success
If you get ERROR:
  Make sure Private Key has been created in the specified region; i.e. if JenkinsServer is in region eu-west-1, EC2 Key pair should be located in eu-west-1. Cannot be applied otherwise


- Use AMI suitable for Jenkins Agents (i.e. the one created in earlier steps)
- Give it a name (description)

Check AMI --> should return the name of your AMI
If you get error:
  Make sure the AMI is located in the specified region. Cannot be applied otherwise.

- Choose instance type
- Enter 'Remote user' based on EC2 Instance; e.g. if working on Ubuntu, Remote user ==> 'ubuntu'

- Define Labels for your Agent; this will be used later when defining where to run builds
- Usage = 'Only build jobs with label expressions matching this node'

- Init script: This is the first shell script run as the Agent node instance is spun up.
Here you should install any prerequisites needed to run tests/start app in Agent

- Add tags so you can identify Agent instance

- Connection strategy defaults to 'Private IP' which is fine, but if your Jenkins has a Public DNS set Connection strategy to 'Public DNS'
