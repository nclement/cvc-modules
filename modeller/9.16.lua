local help_message = [[
Adds modeller 9.16 to PATH, also sets CVC_MODELLER_BIN,
CVC_MODELLER_DIR, CVC_MODELLER_EXAMPLES, CVC_MODELLER_DOC,
and CVC_MODELLER_LIB to the corresponding paths. After
this is done, Modeller can be run in the normal fashion.

Usage: modeller INPUT.py

Version 9.16
]]

help(help_message,"\n")

whatis("Name: modeller")
whatis("Version: 9.16")
whatis("Category: application, bioinformatics, modeling")
whatis("Keywords: Homology Modeling, Biology, Application, Protein")
whatis("URL: https://salilab.org/modeller/")
whatis("Description: Modeller - program for comparative protein structure modelling by satisfaction of spatial restraints")

--load("python/2.7.9")

local mod_dir="/work/01872/nclement/software/modeller-9.16"
setenv("CVC_MODELLER_DIR",mod_dir)
setenv("CVC_MODELLER_BIN",pathJoin(mod_dir,"bin"))
setenv("CVC_MODELLER_LIB",pathJoin(mod_dir,"lib"))
setenv("CVC_MODELLER_EXAMPLES",pathJoin(mod_dir,"examples"))
setenv("CVC_MODELLER_DOC",pathJoin(mod_dir,"doc"))
append_path("PATH",pathJoin(mod_dir,"bin"))
append_path("LD_LIBRARY_PATH",pathJoin(mod_dir,"lib/x86_64-intel8"))
--prepend_path("PYTHONPATH",pathJoin(mod_dir,"lib/x86_64-intel8/python2.5"))
--prepend_path("PYTHONPATH",pathJoin(mod_dir,"modlib"))
-- To quite the errors from python2.3
prepend_path("PYTHONPATH",pathJoin(mod_dir,"bin/lib/python2.3"))
set_alias("modeller",pathJoin(mod_dir,"bin/mod9.16"))
