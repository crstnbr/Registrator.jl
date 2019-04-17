module Registrator

using UUIDs, LibGit2, DataStructures

import Base: PkgId
import Pkg: Pkg, TOML, GitTools

export create_registry, register

const DEFAULT_REGISTRY = "https://github.com/JuliaRegistries/General"
const REGISTRIES = Dict{String,UUID}()

include("slack.jl")
include("builtin_pkgs.jl")
include("register.jl")
include("Server.jl")

end # module
