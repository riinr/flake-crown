{
  description = ''Discord library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."discord-develop".dir   = "develop";
  inputs."discord-develop".owner = "nim-nix-pkgs";
  inputs."discord-develop".ref   = "master";
  inputs."discord-develop".repo  = "discord";
  inputs."discord-develop".type  = "github";
  inputs."discord-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."discord-master".dir   = "master";
  inputs."discord-master".owner = "nim-nix-pkgs";
  inputs."discord-master".ref   = "master";
  inputs."discord-master".repo  = "discord";
  inputs."discord-master".type  = "github";
  inputs."discord-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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