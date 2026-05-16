# Terraform
/***************************Session-29***************************************/
Date: 13/03/2026
/*****************************************************************************/
Notes A:
========
 What is Terraform?
 If we want to run an application we need to deploy it in server...
 We can deploy it an any cloud services aws,azure,gcp,physical on premises..
 So for that in your company if they used aws and then you have developed multipe automated scripts on the aws.
 If they changed the cloud services azure or onpremise or anyother we need to change automated process and for 
 aws we need to know AWS cloud formation template(CFT).for azure we need to know Azure Resource Manager(rm) repeating for all...
 In few companies they use hybrid cloud Services.so we need to learn multiple tools to overcome this "Terraform" came to picture.
   -> Terraform mainly works on "API as code" which is developed by Harshicorp.
   -> If we learn one Tool called Terraform we can  work on any Infrastructure.
   -> Terraform calls the API of any cloud services with the Terrafom script files what cloud services you defined in it.   
   -> Using APi we can programtically talk to any application.Suppose Github,instead of manually authentication every time in UI
      in terminal by using curl/https request so we can talk to the API and get the results.
   -> So developer must be know the API language to avoid that Terraform will converts your request in terraform file and send the 
      API request to application and send back the request to us.This concept "API as code".