{
  description = ''Utility macros for easier handling of options in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-optionsutils-v1_1_1.flake = false;
  inputs.src-optionsutils-v1_1_1.ref   = "refs/tags/v1.1.1";
  inputs.src-optionsutils-v1_1_1.owner = "PMunch";
  inputs.src-optionsutils-v1_1_1.repo  = "nim-optionsutils";
  inputs.src-optionsutils-v1_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-optionsutils-v1_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-optionsutils-v1_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}