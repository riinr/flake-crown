{
  description = ''Nim implementation of the Bittorrent ascii serialization protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bped-master.flake = false;
  inputs.src-bped-master.ref   = "refs/heads/master";
  inputs.src-bped-master.owner = "twist-vector";
  inputs.src-bped-master.repo  = "nim-bped";
  inputs.src-bped-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bped-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bped-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}