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
