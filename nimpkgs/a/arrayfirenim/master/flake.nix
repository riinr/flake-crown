{
  description = ''Arrayfire wrapper for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ArrayFireNim-master.flake = false;
  inputs.src-ArrayFireNim-master.ref   = "refs/heads/master";
  inputs.src-ArrayFireNim-master.owner = "bitstormGER";
  inputs.src-ArrayFireNim-master.repo  = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ArrayFireNim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ArrayFireNim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}