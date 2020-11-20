# author: Vignesh Rajakumar
# citation: Adapted from TIffany Timber's code in UBC MDS DSCI 522 
# date: 2020-11-19

"This script prints out docopt args.
Usage: demo.R <arg1> --arg2=<arg2> [--arg3=<arg3>] [<arg4>]
Options:
<arg>             Takes any value (this is a required positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[--arg3=<arg3>]   Takes any value (this is an optional option)
[<arg4>]          Takes any value (this is an optional positional argument)
" -> doc

library(docopt)

opt <- docopt(doc)

main <- function(opt) {
    # Print the docopt object
    print(opt)

    # Print the type of the docopt object
    print(typeof(opt))

    # Print optional arg4
    print(opt$arg4)
}

main(opt)
