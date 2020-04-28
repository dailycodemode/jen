#This is a sample Image  terraform, ansible, inspec chef executables 
FROM registry.access.redhat.com/ubi7:7.7

RUN yum update -y
RUN yum install wget unzip -y

# # ansimble
# RUN wget https://releases.ansible.com/ansible/rpm/release/epel-6-x86_64/ansible-2.5.12-1.el6.ans.src.rpm
# RUN rpm -ivh ansible-2.5.12-1.el6.ans.src.rpm

# Terraform
RUN wget https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_linux_amd64.zip
RUN unzip terraform_0.12.17_linux_amd64.zip -d /usr/local/bin/

# Chef Inspec
RUN wget https://packages.chef.io/files/stable/inspec/4.18.104/el/7/inspec-4.18.104-1.el7.x86_64.rpm
RUN rpm -ivh inspec-4.18.104-1.el7.x86_64.rpm 