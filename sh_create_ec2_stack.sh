aws cloudformation \
create-stack \
--template-body file://kinesis.yaml \
--stack-name kinesisscfstack

aws cloudformation \
describe-stack-resources \
--stack-name ec2withsecuritygroupstack

aws cloudformation \
delete-stack \
--stack-name ec2withsecuritygroupstack