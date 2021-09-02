##' Split the list into sublists
##'
##' Split the list into sublists
##'
##' @param l a list with more than one element
##' @return single sublists
##' @author Xiaojie Sun
##' @export
##' @examples
##' m = list(x = 1:2,
##'          y = matrix(1:10,2),
##'          z = iris)
##' split_list(m)
##' @seealso
##' \code{\link{dumd}}

split_list = function(l){
  nam = names(l)
  if(is.null(nam)) nam = paste0("a",1:length(l))
  for(i in 1:length(l)){
    assign(nam[i],l[[i]],.GlobalEnv)
  }
}
