{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-triplets-0_0_1.flake = false;
  inputs.src-triplets-0_0_1.owner = "linksplatform";
  inputs.src-triplets-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-triplets-0_0_1.repo  = "Data.Triplets";
  inputs.src-triplets-0_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-triplets-0_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-triplets-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}