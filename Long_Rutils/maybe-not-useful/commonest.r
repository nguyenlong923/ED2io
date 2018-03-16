#==========================================================================================#
#==========================================================================================#
#     This function finds the commonest value for a given vector.                          #
#------------------------------------------------------------------------------------------#
commonest = function(x,na.rm=FALSE) {
  if (na.rm) x = x[! is.na(x)]

  unique.x = unique(x)
  nu       = length(unique.x)
  idx      = which.max(tabulate(match(x, unique.x)))
  fine     = is.finite(idx) && idx %>=% 1 && idx %<=% nu
  if (fine){
     often = unique.x[idx]
  }else{
     often = NA
  }#end if
  return(often)
}#end function
#------------------------------------------------------------------------------------------#



#==========================================================================================#
#==========================================================================================#
#     This function finds the commonest value for a given vector.                          #
#------------------------------------------------------------------------------------------#
commonest.safe = function(x) {
  xok = x[is.finite(x)]
  ans = commonest(xok)
  return(ans)
}#end function
#------------------------------------------------------------------------------------------#