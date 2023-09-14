a = c()
r = c()
m = 10019973
n = 3437
rr = 0
repeat{
  aa = floor(m/n)
  a[length(a) + 1] = aa
  rr = m%%n
  if(rr == 0 || is.element(rr, r)){
    break
  }
  r[length(r) + 1] = rr
  m = 10*rr
}
a1 = a
period = c()
if(is.element(rr, r)){
  p = which(r == rr)
  period = a[(p+1):length(a)]
  a1 = a[1:p]
}
a1
period
