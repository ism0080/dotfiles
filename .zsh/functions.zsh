lsi() {
  aws ec2 describe-instances --query "Reservations[*].Instances[*].{name: Tags[?Key=='Name'] | [0].Value, instance_id: InstanceId, ip_address: PrivateIpAddress, state: State.Name}" --output table
}

ssm() {
  aws ssm start-session --target $1
}

myip() {
  curl 'https://api.ipify.org'
}
