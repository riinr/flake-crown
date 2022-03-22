{
  description = ''Utility macros for easier handling of options in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-optionsutils-v1_1_2.flake = false;
  inputs.src-optionsutils-v1_1_2.owner = "PMunch";
  inputs.src-optionsutils-v1_1_2.ref   = "v1_1_2";
  inputs.src-optionsutils-v1_1_2.repo  = "nim-optionsutils";
  inputs.src-optionsutils-v1_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-optionsutils-v1_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-optionsutils-v1_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}