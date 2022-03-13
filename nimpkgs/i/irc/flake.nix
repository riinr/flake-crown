{
  description = ''Implements a simple IRC client.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."irc-master".dir   = "master";
  inputs."irc-master".owner = "nim-nix-pkgs";
  inputs."irc-master".ref   = "master";
  inputs."irc-master".repo  = "irc";
  inputs."irc-master".type  = "github";
  inputs."irc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."irc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."irc-v0_2_0".dir   = "v0_2_0";
  inputs."irc-v0_2_0".owner = "nim-nix-pkgs";
  inputs."irc-v0_2_0".ref   = "master";
  inputs."irc-v0_2_0".repo  = "irc";
  inputs."irc-v0_2_0".type  = "github";
  inputs."irc-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."irc-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."irc-v0_2_1".dir   = "v0_2_1";
  inputs."irc-v0_2_1".owner = "nim-nix-pkgs";
  inputs."irc-v0_2_1".ref   = "master";
  inputs."irc-v0_2_1".repo  = "irc";
  inputs."irc-v0_2_1".type  = "github";
  inputs."irc-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."irc-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."irc-v0_3_0".dir   = "v0_3_0";
  inputs."irc-v0_3_0".owner = "nim-nix-pkgs";
  inputs."irc-v0_3_0".ref   = "master";
  inputs."irc-v0_3_0".repo  = "irc";
  inputs."irc-v0_3_0".type  = "github";
  inputs."irc-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."irc-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."irc-v0_4_0".dir   = "v0_4_0";
  inputs."irc-v0_4_0".owner = "nim-nix-pkgs";
  inputs."irc-v0_4_0".ref   = "master";
  inputs."irc-v0_4_0".repo  = "irc";
  inputs."irc-v0_4_0".type  = "github";
  inputs."irc-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."irc-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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