{
  description = ''fast, simple interval overlaps with binary search'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lapper-master.flake = false;
  inputs.src-lapper-master.ref   = "refs/heads/master";
  inputs.src-lapper-master.owner = "brentp";
  inputs.src-lapper-master.repo  = "nim-lapper";
  inputs.src-lapper-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lapper-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lapper-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}