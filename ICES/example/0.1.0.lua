-- Informational section

help([[
  This is an example modulefile to get you started. To make a CVC module,
  named 'derp,' make a directory called 'derp' in 
  /org/centers/cvc/software/c7/modules, then make a file named X.Y.Z.lua
  in derp. That will give you a module called 'derp/X.Y.Z'
]])
whatis("Version: 0.1.0")
whatis("Keywords: example, help, cvc")
whatis("URL: https://lmod.readthedocs.io/en/latest/015_writing_modules.html")
whatis("Description: An example modulefile to help you get started.")

-- Action section: Change environmental variables as needed
-- See https://lmod.readthedocs.io/en/latest/050_lua_modulefiles.html
-- for a list of all available functions

setenv(       "EXAMPLE_LOADED", "YES")
prepend_path( "PATH",           "/org/centers/cvc/")
append_path( "LD_LIBRARY_PATH","/org/centers/cvc/")

LmodError([[
  This module exists as an example for modulefile writers. You should 
  probably not try to actually load it. If you're getting this message
  without explicitly loading modules, something is wrong with your
  LMOD configuration, or the configuration of one of your default modules.
]])
