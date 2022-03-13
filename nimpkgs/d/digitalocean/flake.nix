{
  description = ''Wrapper for DigitalOcean HTTP API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."digitalocean-master".dir   = "master";
  inputs."digitalocean-master".owner = "nim-nix-pkgs";
  inputs."digitalocean-master".ref   = "master";
  inputs."digitalocean-master".repo  = "digitalocean";
  inputs."digitalocean-master".type  = "github";
  inputs."digitalocean-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."digitalocean-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."digitalocean-0_1_1".dir   = "0_1_1";
  inputs."digitalocean-0_1_1".owner = "nim-nix-pkgs";
  inputs."digitalocean-0_1_1".ref   = "master";
  inputs."digitalocean-0_1_1".repo  = "digitalocean";
  inputs."digitalocean-0_1_1".type  = "github";
  inputs."digitalocean-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."digitalocean-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."digitalocean-v0_1_0".dir   = "v0_1_0";
  inputs."digitalocean-v0_1_0".owner = "nim-nix-pkgs";
  inputs."digitalocean-v0_1_0".ref   = "master";
  inputs."digitalocean-v0_1_0".repo  = "digitalocean";
  inputs."digitalocean-v0_1_0".type  = "github";
  inputs."digitalocean-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."digitalocean-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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