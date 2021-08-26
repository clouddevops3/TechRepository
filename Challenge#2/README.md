# Question: Query the meta data of an instance within AWS and provide a json formatted output

## What it does
- Query the metadata of an ec2 instance within AWS and provide a json formatted output. 
- Retrieve the value of a particular data key.

## How to install
- [Create an EC2 Linux instance on AWS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html)
- [SSH into the instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)
- Install Python 3 and git on your instance 
    - `sudo yum install python3 git`
- Clone this repository
  - `git clone https://github.com/clouddevops3/TechRepository`
- Install pipenv and requests
  - `sudo pip3 install pipenv`
  - `sudo pip3 install requests`
- Open the repository on your instance and go to Challenge#2 directory
  - `cd Challenge#2`


## How to run
- Open the `Challenge#2` directory
  - `cd Challenge#2`
- Run "metadata.py" to retrive the metadata in JSON format and run "key.py" in order to retrive a particular key:
  - `python3 metadata.py`
  - `python3 key.py`

## Test Output

Metadata in JSON format:

![image](https://user-images.githubusercontent.com/89520742/130935003-329541f1-a410-4744-b307-aad8e1e7c2be.png)

Single Key retrival:

![image](https://user-images.githubusercontent.com/89520742/130935358-812c5080-dba2-4e45-8b22-860a5a7599f6.png)

