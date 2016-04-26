# jenkins_scripts
Scripts to use with Jenkins for a simple deployment pipeline

# Setup

## Jenkins Plugins

## Docker Cloud Plugin

See: https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin
Standard configuration 
Using this docker container for slave
https://github.com/HearstAT/docker-jenkinsslave-ubuntu-chefdk

## Build Pipeline Plugin

See: https://wiki.jenkins-ci.org/display/JENKINS/Build+Pipeline+Plugin
Standard configuration

## Chef Identity Plugin

See: https://wiki.jenkins-ci.org/display/JENKINS/chef-identity+plugin
Standard configuration

For knife-ssh http://stackoverflow.com/questions/25739873/chef-integration-with-jenkins

Created a Jenkins user in Chef Server.
Created ssh keys for the Jenkins box and copied public key to chef-client machine.
Mounted these keys in the Docker Jenkins Slave.

## Checkstyle Plugin

See: https://wiki.jenkins-ci.org/display/JENKINS/Checkstyle+Plugin
See: https://github.com/ATLANTBH/ruby-styleguide/wiki/Integrating-rubocop-with-Jenkins

This is for rubocop

## HTML Publisher Plugin

See: https://wiki.jenkins-ci.org/display/JENKINS/HTML+Publisher+Plugin
See: https://github.com/ATLANTBH/ruby-styleguide/wiki/Integrating-rubocop-with-Jenkins

This is for rubocop

## Github Pull Request Builder Plugin

See: https://wiki.jenkins-ci.org/display/JENKINS/GitHub+pull+request+builder+plugin

## Git Plugin

* https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin
Standard setup
* http://stackoverflow.com/questions/8565108/tagging-a-github-project-through-jenkins/8565437#8565437
* http://stackoverflow.com/questions/13117736/jenkins-tag-build-with-git

Added Jenkins user to Github

# Chef related setup

https://github.com/ATLANTBH/ruby-styleguide/wiki/Integrating-rubocop-with-Jenkins
http://jonlives.github.io/knife-spork/


http://www.cryptocracy.com/blog/2014/01/03/cooking-with-jenkins-test-kitchen-and-docker
http://atomic-penguin.github.io/blog/2014/05/16/stupid-jenkins-tricks-part-2-cookbook-pipelines/
http://jtimberman.housepub.org/blog/2013/05/08/test-kitchen-and-jenkins/
https://www.chef.io/blog/2015/11/20/static-analysis-improving-the-quality-and-consistency-of-your-cookbooks/


# Scripts

## lint_test_kitchen_chef.sh

Plugins needed:
* [CheckStyle](https://wiki.jenkins-ci.org/display/JENKINS/Checkstyle+Plugin)
* [HTML Publisher](https://wiki.jenkins-ci.org/display/JENKINS/HTML+Publisher+Plugin)
* 

Reference:
* https://github.com/ATLANTBH/ruby-styleguide/wiki/Integrating-rubocop-with-Jenkins

## push_chef_metadata_and_tag.sh

[knife-spork](http://jonlives.github.io/knife-spork/) comes as part of [ChefDK](https://downloads.chef.io/chef-dk/) which I have installed on the Docker Container.

This is a little awkward because knife-spork needs the project in a chef-repo so move the project around a bit rather than implementing the logic to bump versions.  This is rather simplistic and likely needs to consider a 

## deploy_to_staging.sh





## deploy_to_prod.sh




