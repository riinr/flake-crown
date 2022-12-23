import std/[os,sequtils, strutils]
import bearssl/hash


when isMainModule:
  for i in 1 .. paramCount():
    var
      ctx = Md5Context()
      res: array[md5SIZE, uint8]
    md5Init(ctx)
    md5Update(ctx, i.paramStr.cstring, uint i.paramStr.len)
    md5Out(ctx, addr res[0])
    echo res.foldl(a & b.toHex(), "").toLower()
