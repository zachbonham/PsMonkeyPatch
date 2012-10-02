*** PowerShell Monkey Patching ***

Just thinking out loud if there is any value here.  The original intent was to provide a way to enable testing dependencies easily in powershell - without dipping into C#.  However, maybe default behavior doesn't work and we need to change that behavior (e.g. pulling data from xml file instead of SharePoint).

Additionally, most powershell is not written as an object.  At least I know I don't.  e.g.  we have a suite of admin functions that get connection strings, servers, and other miscellaneous metadata. Its implemented in a 'module' as well known functions - not as any class(es).

Is that wrong?  Should we be writing "OO"-style in PowerShell?

