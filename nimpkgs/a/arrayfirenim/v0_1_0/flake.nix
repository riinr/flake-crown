{
  description = ''Arrayfire wrapper for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ArrayFireNim-v0_1_0.flake = false;
  inputs.src-ArrayFireNim-v0_1_0.owner = "bitstormGER";
  inputs.src-ArrayFireNim-v0_1_0.ref   = "v0_1_0";
  inputs.src-ArrayFireNim-v0_1_0.repo  = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ArrayFireNim-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ArrayFireNim-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}