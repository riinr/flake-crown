{
  description = ''Discord library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."discordnim-develop".dir   = "develop";
  inputs."discordnim-develop".owner = "nim-nix-pkgs";
  inputs."discordnim-develop".ref   = "master";
  inputs."discordnim-develop".repo  = "discordnim";
  inputs."discordnim-develop".type  = "github";
  inputs."discordnim-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discordnim-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."discordnim-master".dir   = "master";
  inputs."discordnim-master".owner = "nim-nix-pkgs";
  inputs."discordnim-master".ref   = "master";
  inputs."discordnim-master".repo  = "discordnim";
  inputs."discordnim-master".type  = "github";
  inputs."discordnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discordnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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