### The Ansible inventory file
resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  ip-ec2 = aws_instance.leroy.public_ip,
  nome-ec2 = aws_instance.leroy.tags.Name
  ip-ec22 = aws_instance.jetsons.public_ip,
  nome-ec22 = aws_instance.jetsons.tags.Name

 }
 )
 filename = "inventory"
}


