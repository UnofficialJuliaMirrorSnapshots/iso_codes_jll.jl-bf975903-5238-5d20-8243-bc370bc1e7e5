# Autogenerated wrapper script for iso_codes_jll for x86_64-unknown-freebsd11.1
export iso_codes_dir

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `iso_codes_dir`
const iso_codes_dir_splitpath = ["share", "iso-codes"]

# This will be filled out by __init__() for all products, as it must be done at runtime
iso_codes_dir_path = ""

# iso_codes_dir-specific global declaration
# This will be filled out by __init__()
iso_codes_dir = ""


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global iso_codes_dir_path = abspath(joinpath(artifact"iso_codes", iso_codes_dir_splitpath...))

    global iso_codes_dir = iso_codes_dir_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

