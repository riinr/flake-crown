{
  description = ''A wrapper to notification libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notify-master".dir   = "master";
  inputs."notify-master".owner = "nim-nix-pkgs";
  inputs."notify-master".ref   = "master";
  inputs."notify-master".repo  = "notify";
  inputs."notify-master".type  = "github";
  inputs."notify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_0".dir   = "0_1_0";
  inputs."notify-0_1_0".owner = "nim-nix-pkgs";
  inputs."notify-0_1_0".ref   = "master";
  inputs."notify-0_1_0".repo  = "notify";
  inputs."notify-0_1_0".type  = "github";
  inputs."notify-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_1".dir   = "0_1_1";
  inputs."notify-0_1_1".owner = "nim-nix-pkgs";
  inputs."notify-0_1_1".ref   = "master";
  inputs."notify-0_1_1".repo  = "notify";
  inputs."notify-0_1_1".type  = "github";
  inputs."notify-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_2".dir   = "0_1_2";
  inputs."notify-0_1_2".owner = "nim-nix-pkgs";
  inputs."notify-0_1_2".ref   = "master";
  inputs."notify-0_1_2".repo  = "notify";
  inputs."notify-0_1_2".type  = "github";
  inputs."notify-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_4".dir   = "0_1_4";
  inputs."notify-0_1_4".owner = "nim-nix-pkgs";
  inputs."notify-0_1_4".ref   = "master";
  inputs."notify-0_1_4".repo  = "notify";
  inputs."notify-0_1_4".type  = "github";
  inputs."notify-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_5".dir   = "0_1_5";
  inputs."notify-0_1_5".owner = "nim-nix-pkgs";
  inputs."notify-0_1_5".ref   = "master";
  inputs."notify-0_1_5".repo  = "notify";
  inputs."notify-0_1_5".type  = "github";
  inputs."notify-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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