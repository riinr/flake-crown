{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimnews-master".dir   = "master";
  inputs."nimnews-master".owner = "nim-nix-pkgs";
  inputs."nimnews-master".ref   = "master";
  inputs."nimnews-master".repo  = "nimnews";
  inputs."nimnews-master".type  = "github";
  inputs."nimnews-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnews-latest-master".dir   = "latest-master";
  inputs."nimnews-latest-master".owner = "nim-nix-pkgs";
  inputs."nimnews-latest-master".ref   = "master";
  inputs."nimnews-latest-master".repo  = "nimnews";
  inputs."nimnews-latest-master".type  = "github";
  inputs."nimnews-latest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-latest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnews-v0_0_0".dir   = "v0_0_0";
  inputs."nimnews-v0_0_0".owner = "nim-nix-pkgs";
  inputs."nimnews-v0_0_0".ref   = "master";
  inputs."nimnews-v0_0_0".repo  = "nimnews";
  inputs."nimnews-v0_0_0".type  = "github";
  inputs."nimnews-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnews-v0_1_0".dir   = "v0_1_0";
  inputs."nimnews-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimnews-v0_1_0".ref   = "master";
  inputs."nimnews-v0_1_0".repo  = "nimnews";
  inputs."nimnews-v0_1_0".type  = "github";
  inputs."nimnews-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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