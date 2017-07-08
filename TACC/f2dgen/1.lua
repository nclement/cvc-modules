local help_message = [[
pqr2f2d is needed for docking. Need to add some packages to get
it to run, though. Set correct settings through this module.
]]

help(help_message,"\n")

whatis("Name: f2dgen")
whatis("Version: 1")
whatis("Category: application, bioinformatics, docking, F2Dock")
whatis("Keywords: Docking, Biology, Application, Protein")
whatis("Description: f2dgen is a helper for F2Dock")

local MGL_dir="/work/01872/nclement/software/MGLToolsPckgs"
local f2dgen_dir="/work/01872/nclement/scripts/docking/f2dgen"
append_path("PATH",f2dgen_dir)
append_path("PYTHONPATH",MGL_dir)
