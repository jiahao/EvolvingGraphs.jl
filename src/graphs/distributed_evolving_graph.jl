@everywhere using DistributedArrays

type DEvolvingGraph{S,T<:Number} <: AbstractEvolvingGraph
    nodes::DArray{S, 1}
    matrices::DArray{T, 3}
    nodes_hash::Dict{S, Int}
end
function DEvolvingGraph{S,T<:Number}(nodes::DArray{Any,1}, 
                                   matrices::DArray{T,3})
    nodes_hash = Dict{S, Int}()
    for (i, node) in enumerate(nodes)
        nodes_hash[node] = i
    end
    DEvolvingGraph(nodes, matrices, nodes_hash)
end
