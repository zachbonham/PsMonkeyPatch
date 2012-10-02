

# our public 'interface' for getting connection strings
#
function get_connection_string($context)
{
  # default implementation
  #
  return get_connection_string_from_sharepoint $context
}

# pretend we are grabbing connection string from sharepoint list
#
function get_connection_string_from_sharepoint($context)
{
  return "connection_string from sharepoint"
}
