{
  description = ''Logging library with support for async IO, multithreading, Journald.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."morelogging-master".dir   = "master";
  inputs."morelogging-master".owner = "nim-nix-pkgs";
  inputs."morelogging-master".ref   = "master";
  inputs."morelogging-master".repo  = "morelogging";
  inputs."morelogging-master".type  = "github";
  inputs."morelogging-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."morelogging-0_1_1".dir   = "0_1_1";
  inputs."morelogging-0_1_1".owner = "nim-nix-pkgs";
  inputs."morelogging-0_1_1".ref   = "master";
  inputs."morelogging-0_1_1".repo  = "morelogging";
  inputs."morelogging-0_1_1".type  = "github";
  inputs."morelogging-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."morelogging-0_1_2".dir   = "0_1_2";
  inputs."morelogging-0_1_2".owner = "nim-nix-pkgs";
  inputs."morelogging-0_1_2".ref   = "master";
  inputs."morelogging-0_1_2".repo  = "morelogging";
  inputs."morelogging-0_1_2".type  = "github";
  inputs."morelogging-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."morelogging-0_1_3".dir   = "0_1_3";
  inputs."morelogging-0_1_3".owner = "nim-nix-pkgs";
  inputs."morelogging-0_1_3".ref   = "master";
  inputs."morelogging-0_1_3".repo  = "morelogging";
  inputs."morelogging-0_1_3".type  = "github";
  inputs."morelogging-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."morelogging-0_1_4".dir   = "0_1_4";
  inputs."morelogging-0_1_4".owner = "nim-nix-pkgs";
  inputs."morelogging-0_1_4".ref   = "master";
  inputs."morelogging-0_1_4".repo  = "morelogging";
  inputs."morelogging-0_1_4".type  = "github";
  inputs."morelogging-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."morelogging-0_2_0".dir   = "0_2_0";
  inputs."morelogging-0_2_0".owner = "nim-nix-pkgs";
  inputs."morelogging-0_2_0".ref   = "master";
  inputs."morelogging-0_2_0".repo  = "morelogging";
  inputs."morelogging-0_2_0".type  = "github";
  inputs."morelogging-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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