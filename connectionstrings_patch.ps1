
import-module .\submodule.ps1



# 'monkey patch' get_connection_string to get connection string from xml file
#
function get_connection_string($context)
{
  return get_connection_string_from_xml $context
}



# pretend we are grabbing connection string from xml file
#
function get_connection_string_from_xml($context)
{
  return "connection_string from xml file"
}

