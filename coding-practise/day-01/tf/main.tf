resource "aws_db_instance" "neostreamRDS" {
  allocated_storage = 20
  engine = "pgsql"
  instance_class = "db.t3.micro"
  db_name = "neostreamdb"
#   manage_master_user_password = true
  username = "neostream"
  password = "sjfnajnajsdnsa"
  skip_final_snapshot = true
}