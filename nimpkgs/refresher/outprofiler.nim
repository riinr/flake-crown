import std/[posix, streams, monotimes]

proc main =
  var previous = getMonoTime()
  var lastLine = ""
  for line in stdin.lines:
    let next = getMonoTime()
    echo $(next - previous)  & " " & $lastLine
    lastLine = line
    previous = next
  let next = getMonoTime()
  echo $(next - previous)  & " " & $lastLine
main()
