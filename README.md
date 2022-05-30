# TestADDependency

MWE for this AbstractDifferentiation precompilation error:

```julia-repl
(TestADDependency) pkg> status
Project TestADDependency v0.1.0
Status `~/Developer/TestADDependency/Project.toml`
  [c29ec348] AbstractDifferentiation v0.4.3
  [e88e6eb3] Zygote v0.6.40

(TestADDependency) pkg> precompile
Precompiling project...
  ✗ TestADDependency
  0 dependencies successfully precompiled in 3 seconds. 35 already precompiled.

ERROR: The following 1 direct dependency failed to precompile:

TestADDependency [34f2ebba-d68a-4a13-a6cd-2ada1134ccab]

Failed to precompile TestADDependency [34f2ebba-d68a-4a13-a6cd-2ada1134ccab] to /Users/funks/.julia/compiled/v1.8/TestADDependency/jl_EHrP9j.
ERROR: LoadError: UndefVarError: ZygoteBackend not defined
Stacktrace:
 [1] getproperty(x::Module, f::Symbol)
   @ Base ./Base.jl:31
 [2] top-level scope
   @ ~/Developer/TestADDependency/src/TestADDependency.jl:4
 [3] include
   @ ./Base.jl:422 [inlined]
 [4] include_package_for_output(pkg::Base.PkgId, input::String, depot_path::Vector{String}, dl_load_path::Vector{String}, load_path::Vector{String}, concrete_deps::Vector{Pair{Base.PkgId, UInt64}}, source::Nothing)
   @ Base ./loading.jl:1400
 [5] top-level scope
   @ stdin:1
in expression starting at /Users/funks/Developer/TestADDependency/src/TestADDependency.jl:1
in expression starting at stdin:1
```