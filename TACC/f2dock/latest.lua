local help_message = [[
Adds F2Dock path and docking scripts to PATH, also sets CVC_SCRIPT_DIR to
a directory that contains useful scripts for docking.

After F2Dock has been loaded, run as:

  F2dock INPUT.inp

Also added to the path are several docking scripts ($CVC_SCRIPT_DIR/docking) to
make things easier. Run the docking script as follows:

  dock_both.sh LIGAND.pdb RECEPTOR.pdb OUTPUT.txt [RMSD]

See the script for more options.
]]

help(help_message,"\n")

whatis("Name: F2Dock")
whatis("Version: latest build")
whatis("Category: application, bioinformatics, docking")
whatis("Keywords: Docking, Biology, Application, Protein")
whatis("URL: http://www.cs.utexas.edu/~bajaj/cvc/software/f2dock.shtml")
whatis("Description: F2Dock is a rigid-body protein-protein docking software")

local f2dock_dir="/work/01872/nclement/cvc_fresh/F2Dock-refactored"
local script_dir="/work/01872/nclement/scripts"
setenv("CVC_F2DOCK_DIR",f2dock_dir)
setenv("CVC_F2DOCK_BIN",pathJoin(f2dock_dir,"Release/bin"))
setenv("CVC_SCRIPT_DIR",script_dir)
setenv("CVC_DOCKING_SCRIPT_DIR",pathJoin(script_dir,"/docking"))
append_path("PATH",pathJoin(f2dock_dir,"Release/bin"))
append_path("PATH",pathJoin(script_dir,"docking"))

load("gcc/4.7.1")
load("f2dgen")
