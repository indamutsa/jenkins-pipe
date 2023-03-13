# Install Jenkins EC2 server
Run the following command command in this folder.

```
terraform init
```

However, it might not work due to changing regions, \
In that case, please change, delete generated terraform files and run this command: \

```
terraform init
terraform plan
terraform apply --auto-approve
```

Connect to ec2, you need to change to change the directory where key-main.pem is: \
`ssh -i "key-main.pem" ec2-user@35.175.131.53`

Move to jenkins: \
`http://35.175.131.53:8080/`

Follow the instructions and complete the setup!

---------

Add a repository: \

```
gh repo create
# You can delete repository this way
------------------------------------
gh repo delete jenkins-pipe --yes
# Follow the instructions
------------------------------------
git status
git add .
git status
git commit -m "First commit"
git push --set-upstream origin master
git status
```

To  see the current repository: \
git remove -v


----------------------------------------------------------------

Add a new pipeline,
use advanced project options, inside pipeline definition: choose pipeline script from SCM.
Select git in SCM, ADD the repo url and the credentials we created earlier and save.
Make sure the branch is what you have in the repository.

----------------------------------------------------------------

Once done, save and apply. and then build the pipeline.

----------------------------------------------------------------

Head to EC2, and select the loadbalancer , you should be able to see nginx deployed
