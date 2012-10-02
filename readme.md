PowerShell Monkey Patching
=========================== 

Just thinking out loud if there is any value here.  The original intent was to provide a way to enable testing dependencies easily in powershell - without dipping into C#.  However, maybe default behavior doesn't work and we need to change that behavior (e.g. pulling data from xml file instead of SharePoint).

e.g. if I'm writing some Posh code and using default implementation

``` powershell
   import-module .\connectionstrings.ps1

   $connection_string = get_connection_string $context

   # use connection string
```

Now maybe I need to patch a couple of functions in **connectionstrings.ps1**, e.g. change the default behavior to load from xml for *my* instance:

``` powershell
 import-module .\connectionstrings.ps1
 import-module .\connectionstrings_patched.ps1

 # internally, get_connection_string has been patched to load from file, not sharepoint.
 #
 $connection_string = get_connection_string $context

 # use connection string
```

Agreed, it would be clearer to rename get_connection_string to get_connection_string_from_xml or something similar.  With only the trusty "find in files" as my refactor tool, is that still the best path?  

Additionally, most powershell is not written as an object.  At least I know I don't.  e.g.  we have a suite of admin functions that get connection strings, servers, and other miscellaneous metadata. Its implemented in a 'module' as well known functions - not as any class(es).  

Is that wrong?  Should we be writing "OO"-style in PowerShell?  Without a "class" keyword in PowerShell, do we effectively try to create shorthand for class authoring?  Or is that effective use of the 'Add-Type' function?



