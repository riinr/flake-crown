{
  description = ''Audius is a simple client library for interacting with the Audius free API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."audius-master".dir   = "master";
  inputs."audius-master".owner = "nim-nix-pkgs";
  inputs."audius-master".ref   = "master";
  inputs."audius-master".repo  = "audius";
  inputs."audius-master".type  = "github";
  inputs."audius-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."audius-v0_1_0".dir   = "v0_1_0";
  inputs."audius-v0_1_0".owner = "nim-nix-pkgs";
  inputs."audius-v0_1_0".ref   = "master";
  inputs."audius-v0_1_0".repo  = "audius";
  inputs."audius-v0_1_0".type  = "github";
  inputs."audius-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."audius-v0_1_1".dir   = "v0_1_1";
  inputs."audius-v0_1_1".owner = "nim-nix-pkgs";
  inputs."audius-v0_1_1".ref   = "master";
  inputs."audius-v0_1_1".repo  = "audius";
  inputs."audius-v0_1_1".type  = "github";
  inputs."audius-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."audius-v0_1_2".dir   = "v0_1_2";
  inputs."audius-v0_1_2".owner = "nim-nix-pkgs";
  inputs."audius-v0_1_2".ref   = "master";
  inputs."audius-v0_1_2".repo  = "audius";
  inputs."audius-v0_1_2".type  = "github";
  inputs."audius-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}