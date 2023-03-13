terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.58.0"
    }
  }
}





# Set Snowflake provider credentials
provider "snowflake" {
  account = "fub14477.us-east-1"
  username = "mandardhumal"
  password = "Qwerty@123"
}

# Create a Snowflake warehouse
resource "snowflake_warehouse" "tf_wh" {
  name = "tf_wh"
  warehouse_size = "X-Small"
}

# Create a Snowflake database
resource "snowflake_database" "tf_db" {
  name = "tf_db"
}

# Create a schema within the database
resource "snowflake_schema" "tf_schema" {
  name = "tf_schema"
  database = snowflake_database.tf_db.name
}


