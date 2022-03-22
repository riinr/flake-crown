{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bitty-0_1_2.flake = false;
  inputs.src-bitty-0_1_2.owner = "treeform";
  inputs.src-bitty-0_1_2.ref   = "0_1_2";
  inputs.src-bitty-0_1_2.repo  = "bitty";
  inputs.src-bitty-0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bitty-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bitty-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}