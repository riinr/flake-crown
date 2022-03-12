{
  description = ''A nim wrapper for ArrayFire'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ArrayFireNim-v0_2_2.flake = false;
  inputs.src-ArrayFireNim-v0_2_2.owner = "bitstormGER";
  inputs.src-ArrayFireNim-v0_2_2.ref   = "refs/tags/v0.2.2";
  inputs.src-ArrayFireNim-v0_2_2.repo  = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-v0_2_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ArrayFireNim-v0_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ArrayFireNim-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}