__precompile__(true)
module CHomP

using Reexport
@reexport using PyCall
export pychomp, cmgdb#, dsgrn

const pychomp = PyNULL()
const cmgdb = PyNULL()
#const dsgrn = PyNULL()

function __init__()
    copy!(pychomp, pyimport("pychomp2"))
    copy!(cmgdb, pyimport("CMGDB"))
    #copy!(dsgrn, pyimport("DSGRN"))
end

end
