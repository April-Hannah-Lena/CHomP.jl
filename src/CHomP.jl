module CHomP

using Reexport
@reexport using PyCall

const chomp = PyNULL()

function __init__()
    copy!(chomp, pyimport("chomp"))
end

end
