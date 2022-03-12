{
  description = ''Deal with Windows Registry from Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-winregistry-v0_1_8.flake = false;
  inputs.src-winregistry-v0_1_8.owner = "miere43";
  inputs.src-winregistry-v0_1_8.ref   = "refs/tags/v0.1.8";
  inputs.src-winregistry-v0_1_8.repo  = "nim-registry";
  inputs.src-winregistry-v0_1_8.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-winregistry-v0_1_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-winregistry-v0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}