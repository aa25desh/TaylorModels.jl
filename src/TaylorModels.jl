module TaylorModels

using Reexport
@reexport using TaylorSeries, IntervalArithmetic
using IntervalRootFinding

const Interval = IntervalArithmetic.Interval
setformat(:full)

import Base: ==, +, -, *, /, ^,
    zero, findfirst, #iszero,
    inv, sqrt, exp, log, sin, cos, tan,
    asin, acos, atan, sinh, cosh, tanh

import TaylorSeries: get_order, evaluate

export TMAbsRem, TMRelRem, Interval, remainder,
    rpa, rpafp, boundarem, boundrrem

include("constructors.jl")
include("bounds.jl")
include("rpa_functions.jl")
include("arithmetic.jl")
include("recipe.jl")


end # module
