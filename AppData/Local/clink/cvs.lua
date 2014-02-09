
--------------------------------------------------------------------------------
local cvs_argument_tree = {
-- Porcelain and ancillary commands from cvs's man page.
    "add", "admin", "annotate", "checkout", "commit", "diff", "import", "log",
    "tag", "update"
}
    
clink.arg.register_parser("cvs", cvs_argument_tree)

