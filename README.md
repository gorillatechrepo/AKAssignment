![success](https://github.com/gorillatechrepo/AKAssignment/blob/main/Success.PNG)
-I encountered an issue with the Ubuntu 16 EC2 instance being unsupported. To resolve this, I utilized an appropriate AMI for my region and opted for a more updated version, Ubuntu 18.
-Tomcat7 had reached its end of life, so I updated the playbook to install Tomcat9 and renamed all references to the tomcat7 directories to tomcat9.
-Permission issues with some tasks in the playbook surfaced, which I resolved by adding "become: yes" to the tasks.
-The web server could not connect to MongoDB, and I discovered that the MongoDB binding was set to 127.0.0.1 in the mongodb.conf file. I updated the playbook to set the binding to the appropriate setting.
-Syntax errors in the lb.j2 file caused the NGINX load balancer configuration to be incorrect, which I resolved by updating the file.
-The playbook did not point to the local nginx.conf file, which caused errors with pid. I fixed this by updating the playbook to point to the correct file.
-To improve readability and maintainability, I created multiple Terraform files that any DevOps engineer could navigate easily to locate relevant information. I also assigned variables to areas that may require future modifications to enhance the playbook's flexibility to suit user needs.
-For security reasons, I chose to omit the app_key. This playbook should work in all regions provided the variables are defined correctly, a new app_key is generated, and the inventory.yml file is updated with the appropriate public IP addresses.
