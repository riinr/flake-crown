{
  description = ''A crafty implementation of structured logging for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chronicles-v0_10_1.flake = false;
  inputs.src-chronicles-v0_10_1.ref   = "refs/tags/v0.10.1";
  inputs.src-chronicles-v0_10_1.owner = "status-im";
  inputs.src-chronicles-v0_10_1.repo  = "nim-chronicles";
  inputs.src-chronicles-v0_10_1.type  = "github";
  
  inputs."testutils".owner = "nim-nix-pkgs";
  inputs."testutils".ref   = "master";
  inputs."testutils".repo  = "testutils";
  inputs."testutils".dir   = "v0_5_0";
  inputs."testutils".type  = "github";
  inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".owner = "nim-nix-pkgs";
  inputs."json_serialization".ref   = "master";
  inputs."json_serialization".repo  = "json_serialization";
  inputs."json_serialization".dir   = "master";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chronicles-v0_10_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-chronicles-v0_10_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}