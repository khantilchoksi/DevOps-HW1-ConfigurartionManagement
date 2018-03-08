# DevOps-HW1-ConfigurartionManagement

> **Name: Khantil Choksi and Unity ID: khchoksi.**  

## Configuration Architecture:
 * I have created three virtual machines as described below:  
      1. Ansible VM
      2. Onboarding VM :- To run the CoffeeMaker Spring Boot Application.
      3. Onboarding-Selenium VM :- To run the Selenium Tests.
* **Architecture Diagram:** ![img](/Architecture.png)  

## Onboarding Coffee Maker VM Configuration / Ansible Script:    
   * Here is the  [YAML file](/ansible/app.yml) for configuration management of CoffeeMaker.     
   * Here is my [Vagrant file](/onboard/Vagrantfile) for Onboarding VM. 
   * The following steps are to be done in order to perform the automating configuration of this Java Spring Application:  
      1. Installed the [Java8](/ansible/roles/java), [Maven](/ansible/roles/maven), [Git](/ansible/roles/git) from their corresponding ansible roles.
      2.  Now, to clone the github repo, I have created RSA key pairs (public and private) on the Onboarding VM and registered the key on github.ncsu.com. So, using the `git + ssh`, it will allow the ansible script to clone the repo using the RSA private key.
      3. Here, is the ansible role for [Onboarding - CoffeeMaker Java Spring Application](/ansible/roles/onboarding) which has idempotent tasks to run the spring application.    
      4. The ansible's `template` task allow us to replace the ansible variable `mysql_password` defined in the [hibernate config file](/ansible/roles/onboarding/templates/hibernate-template.cfg.xml).
      5. To run the Java Spring application in background,  `nohup` command is used.     
      6. This all tasks together, runs the application and we can see the output on `192.168.8.10:8080`.   
      
      
## Onboarding - Selenium Test VM Configuration / Ansible Script:    
   * Here is the  [YAML file](/ansible/test.yml) for configuration management of Selenium Testing.     
   * Here is my [Vagrant file](/onboard-selenium/Vagrantfile) for Onboarding-Selenium VM. 
   * The following steps are to be done in order to perform the automating configuration of this Java Spring Application:  
      1. Installed the [Java8](/ansible/roles/java), [Maven](/ansible/roles/maven), [Maven3](/ansible/roles/maven3), [Git](/ansible/roles/git) from their corresponding ansible roles.
      2. Here, is the ansible role for [Onboarding-Selenium Test Application](/ansible/roles/selenium) which has idempotent tasks to run the selenium tests.    
      3. The ansible's `lineinfile` module is used to modify the code to change ip address and add the chrome dirver options `"on-sandbox"`.
      4. The  `mvn test` command is run to test the application using Selenium.     
      5. This all tasks together, runs the selenium tests successfully `Tests run: 3, Failures: 0, Errors: 0, Skipped: 0`. 

#### [Screencast](https://youtu.be/OdsuAEUhH8g) demonstrating ansible scripts for automatic configuration of Coffemaker Java Spring Application and passing the selenium test cases.

#### **Quick Links:**   
  * [Ansible Script for CoffeeMaker](/ansible/app.yml)
  * [Ansible Script for Selenium](/ansible/test.yml)
  * [Ansible Roles](/ansible/roles)
  * [Screencast](https://youtu.be/OdsuAEUhH8g)   
  

**Thank you!**  
