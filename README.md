![success](https://github.com/gorillatechrepo/AKAssignment/blob/main/Success.PNG)
This task was quite enjoyable, albeit it presented a few challenges during deployment.

# Deployment Issues

-   The EC2 instance of Ubuntu 16 is no longer supported, so we opted for the more updated version, 18, by utilizing the "ami-030e520ec063f6467".
--  In this brach I used a different AMI approriate for my AWS region.
-   Tomcat7 reached its end of life on 31st March 2022. To comply with the latest development standards, we updated the playbook by installing Tomcat8 and renamed all references to the tomcat7 directories to tomcat8.
-   Due to insufficient user permissions, some tasks in the playbook were not executable. To rectify this issue, we added **become: yes** to the tasks.
- The Web server wouldn't connect to MongoDB. I used telnet from the webserver to test that the port was litening and was refused. I validated the iptables and that the MongoDB service was started. After looking at the mongodb.conf file I noticed the binding was set to 127.0.0.1. I modified the playbook to change the config to the appropriate setting.
- The playbook also had syntax errors in the *lb.j2* file that caused the nginx lb config to be incorrect.
- The playbook was not pointing to the local nginx.conf file. This caused errors with pid.



## Notes

-   To improve readability, I created multiple terraform files that any DevOps engineer could effortlessly navigate to locate relevant information.
-   I assigned variables to areas that would require future modifications, thus enhancing the code's flexibility to suit user needs.
-   I chose to omit the app_key for secuirty reasons. This script should work in all regions assuming the variables are define correctly, a new app_key is generated and the inventory.yml file is updated with the appropriate public ip addresses.
