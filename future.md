Future:


Chef Plugin
===========

* https://github.com/melezhik/chef-plugin/
* http://stackoverflow.com/questions/25739873/chef-integration-with-jenkins

Unfortunately appears have to build yourself, not in the Jenkins Plugin Repo.
So far the chef-identity plugin 

dpxdt
=====

* https://github.com/bslatkin/dpxdt
* https://dpxdt-test.appspot.com/

Have this working locally.  Need to stand up a server.
The test instance does not appear to be accepting keys or I am not configuring it right.
https://dpxdt-test.appspot.com/build?id=1621

Jenkins Environment Variables
=============================

* https://wiki.jenkins-ci.org/display/JENKINS/Building+a+software+project#Buildingasoftwareproject-below
* http://stackoverflow.com/questions/5402174/what-properties-are-in-jenkins-hudson-available-for-build-configuration
* http://stackoverflow.com/questions/23785651/how-to-set-jenkins-environment-variable-from-script

Clean up scripts to better use these options.

Chef Version Bump
=================

* Look at: https://gist.github.com/parnurzeal/10811308

Seems like more work than the knife-spork method currently being used, however may have some interesting concepts.

Pipeline Plugin
===============

https://wiki.jenkins-ci.org/display/JENKINS/Pipeline+Plugin
https://github.com/jenkinsci/pipeline-plugin/blob/master/TUTORIAL.md

Has a Groovy DSL, but not a UI unless you get the Cloudbees support

This may get better in Jenkins 2.0 https://jenkins.io/blog/2016/04/21/dsl-plugins/

AWS Cloudformation Plugin
=========================

https://wiki.jenkins-ci.org/display/JENKINS/AWS+Cloudformation+Plugin

This would help with the replacing of infrastructure a lot.

Inverse Strategy in Jenkins
===========================

As far as I can tell the inverse strategy does not work unless you do polling (does not work with web hooks)

* https://issues.jenkins-ci.org/browse/JENKINS-22593
* http://stackoverflow.com/questions/17155249/jenkins-gerrit-trigger-on-all-branches-except-master
* https://github.com/jenkinsci/git-plugin/pull/45
* http://stackoverflow.com/questions/16323749/jenkins-github-plugin-inverse-branches
* http://stackoverflow.com/questions/21314632/how-to-exclude-git-branch-from-building-in-jenkins
* https://github.com/jenkinsci/github-plugin/pull/111

Chef Pipeline Cookbook
======================

https://github.com/chef-solutions/pipeline

Stephen Lauck's Delivery Dev
============================

https://github.com/stephenlauck/delivery_dev



