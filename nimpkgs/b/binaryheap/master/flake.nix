{
  description = ''Simple binary heap implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-binaryheap-master.flake = false;
  inputs.src-binaryheap-master.owner = "bluenote10";
  inputs.src-binaryheap-master.ref   = "master";
  inputs.src-binaryheap-master.repo  = "nim-heap";
  inputs.src-binaryheap-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-binaryheap-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-binaryheap-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}