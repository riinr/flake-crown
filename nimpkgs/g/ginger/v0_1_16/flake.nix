{
  description = ''A Grid (R) like package in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ginger-v0_1_16.flake = false;
  inputs.src-ginger-v0_1_16.ref   = "refs/tags/v0.1.16";
  inputs.src-ginger-v0_1_16.owner = "Vindaar";
  inputs.src-ginger-v0_1_16.repo  = "ginger";
  inputs.src-ginger-v0_1_16.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ginger-v0_1_16"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ginger-v0_1_16";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}