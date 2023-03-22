
This task was quite enjoyable, albeit it presented a few challenges during deployment.

# Deployment Issues

-   The EC2 instance of Ubuntu 16 is no longer supported, so we opted for the more updated version, 18, by utilizing the "ami-030e520ec063f6467".
-   Tomcat7 reached its end of life on 31st March 2022. To comply with the latest development standards, we updated the playbook by installing Tomcat8 and renamed all references to the tomcat7 directories to tomcat8.
-   Due to insufficient user permissions, some tasks in the playbook were not executable. To rectify this issue, we added **become: yes** to the tasks.
- The Web server wouldn't connect to MongoDB. I used telnet from the webserver to test that the port was litening and was refused. I validated the iptables and that the MongoDB service was started. After looking at the mongodb.conf file I noticed the binding was set to 127.0.0.1. I modified the playbook to change the config to the appropriate setting.
- The playbook also had syntax errors in the *lb.j2* file that caused the nginx lb config to be incorrect. 


## Notes

-   To improve readability, I created multiple terraform files that any DevOps engineer could effortlessly navigate to locate relevant information.
-   I assigned variables to areas that required modifications, thus enhancing the code's flexibility to suit user needs.
