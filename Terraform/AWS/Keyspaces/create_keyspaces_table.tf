# Create a keyspaces table.
resource "aws_keyspaces_table" "keyspaces_table" {
  keyspace_name = aws_keyspaces_keyspace.keyspaces.name
  table_name    = "keyspaces_table"
  schema_definition {
    column {
      name = "message"
      type = "ascii"
    }
    partition_key {
      name = "message"
    }
  }
  tags = {
    # "{project-name}-keyspaces-table-{0}-{us-east-1a}"
    Name = "code-snippets-keyspaces-table-0-us-east-1a"
  }
}
