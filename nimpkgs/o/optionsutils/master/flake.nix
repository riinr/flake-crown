{
  description = ''Utility macros for easier handling of options in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-optionsutils-master.flake = false;
  inputs.src-optionsutils-master.ref   = "refs/heads/master";
  inputs.src-optionsutils-master.owner = "PMunch";
  inputs.src-optionsutils-master.repo  = "nim-optionsutils";
  inputs.src-optionsutils-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-optionsutils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-optionsutils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}