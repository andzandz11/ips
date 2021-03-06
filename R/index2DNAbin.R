## This code is part of the ips package
## © C. Heibl 2016 (last update 2016-11-16)

#' @title Conversion of Index to DNAbin
#' @description Use indices of non-empty positions to convert a list of 
#' DNA sequences into a matrix.
#' @param DNAbin A list of class \code{\link{DNAbin}}.
#' @param index A list of integers containing the indices of base positions.
#' @seealso \code{\link{DNAbin2index}}
#' @export
 
index2DNAbin <- function(DNAbin, index){
  
  ## check if input data match each other
  if ( !all(names(DNAbin) %in% names(index)) ){
    stop("sequences and indices not matching")
  }
  
  ## calculate alignment length:
  al <- max(sapply(index, max))
  
  ## reorder sequnces to match indices:
  DNAbin <- DNAbin[match(names(index), names(DNAbin))]
  
  ## create empty MSA
  obj <- rep(al, length(index))
  obj <- lapply(obj, rep.int, x = as.raw(4))
  
  ## fill bases into empty alignment
  for ( i in seq_along(obj) ){
    # cat("\n", i)
    obj[[i]][index[[i]]] <- DNAbin[[i]]#; i <- i + 1
  }
  names(obj) <- names(DNAbin)
  class(obj) <- "DNAbin"
  as.matrix(obj)
}