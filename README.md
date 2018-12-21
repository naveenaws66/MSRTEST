I created servers on aws using terraform .

step 1: write a terraform script with provider(aws) and resource(ec2_instance,ami_id,tags).

step 2: now open powershell and cd to respective folder where terraform file was created

step 3: still inside the folder do "terraform init"

step 4: if step 3 was success do "terraform validate -var "accesskey="  " -var "secrectkey="  " "

step 5: if step 4 was success then d0 "terraform apply -var "accesskey="  " -var "secrectkey="  " "

step 6: then login into servers and run shell script provisioning.sh

Used shell script for provisioning.
