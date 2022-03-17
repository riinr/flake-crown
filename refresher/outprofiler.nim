#!../nimpkgs/n/nimcr/result/bin/nimcr

import std/[math, posix, streams, strformat, monotimes, times]

proc display(dur: Duration): string =
  let 
    m  = fmt"{dur.inMinutes:02}"
    s  = fmt"{dur.inSeconds:02}"
    to = fmt"{dur.inNanoseconds:010}"
    l  = to.len
    ms = to[(l-9)..(l-7)]
    us = to[(l-6)..(l-4)]
    ns = to[(l-3)..(l-1)]
  fmt"{m}m{s}s{ms}ms{us}us{ns}ns"

proc main =
  var
    previous = getMonoTime()
    next = previous
    diff = next - previous
  for line in stdin.lines:
    next = getMonoTime()
    diff = next - previous
    echo fmt"{diff.display} {$line}"
    previous = next
main()
