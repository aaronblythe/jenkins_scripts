* Open bookmarked set of tabs called "Pipeline Presentation"
  * Log into everything
  * Ensure DNS is working properly
    * May need to run chef-client on nodes if they have new DNS
    * If so then will need to log in once from Jenkins box to accept
    * `ssh -i "/home/ubuntu/.ssh/id_rsa" ubuntu@<public DNS>`
    * keys should already be there, but if they are not
    * `scp -i "/home/ubuntu/.ssh/jenkins_id_rsa" .ssh/id_rsa.pub ubuntu@<public DNS>:~/.ssh/` 
    * and then on the chef-client `cat .ssh/id_rsa.pub >> ~/.ssh/authorized_keys`  (http://stackoverflow.com/questions/12392598/how-to-add-rsa-key-to-authorized-keys-file)
    * Reference: TODO
* Make sure already kitchen converged once with docker to save time


Commands to run:

`cd ~/test/
`git clone https://github.com/aaronblythe/hello_webpage_chef.git`
`cd ~/test/hello_webpage_chef`
'git merge master'
`st .`
# Make change
`export KITCHEN_YAML=.kitchen.docker.yml`
`kitchen converge`

show in kitematic and in browser

`git checkout -b working_branch`
`git add templates/index.html.erb`
`git commit -m "Updating city to Champaign"
`git push origin working_branch`

create pull request
show that pipeline is kicked off

FAIL

update test
`kitchen converge`
`kitchen verify`
`git checkout -b working_branch`
`git add templates/index.html.erb`
`git commit -m "Fixing test to match City of Champaign"
`git push origin working_branch`

cancel pull request and reopen to start the pipeline again

comment on the pull request

merge pull request

Show the existing staging site

Execute release step of the pull request

Show Git tag pushed by Jenkins

Discuss pdiffs

Show that the site has been updated

Show existing production site

Deploy to Production

Show that the change exists.













