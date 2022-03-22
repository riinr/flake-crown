{
  description = ''A library that provides unit types in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Unit-master.flake = false;
  inputs.src-Unit-master.ref   = "refs/heads/master";
  inputs.src-Unit-master.owner = "momeemt";
  inputs.src-Unit-master.repo  = "Unit";
  inputs.src-Unit-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Unit-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Unit-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}