{
  description = ''MinMaxHeap'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-minmaxheap-master.flake = false;
  inputs.src-minmaxheap-master.owner = "stefansalewski";
  inputs.src-minmaxheap-master.ref   = "master";
  inputs.src-minmaxheap-master.repo  = "minmaxheap";
  inputs.src-minmaxheap-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-minmaxheap-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-minmaxheap-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}