import cligen;

proc fun(foo=1,bar=2.0,baz="x",verb=false,args: seq[string]): int=
  ## An API call doc comment
  echo "foo ",  foo
  echo "bar ",  bar
  echo "baz ",  baz
  echo "verb ", verb
  echo "args ", args
  result = 10      # Of course, real code would have real work here


dispatch fun
