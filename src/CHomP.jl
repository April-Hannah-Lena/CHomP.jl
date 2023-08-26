__precompile__(true)
module CHomP

using Reexport
@reexport using PyCall
export chompjl

const chompjl = PyNULL()

function __init__()
    copy!(chompjl, pyimport("pychomp2"))
end

end
