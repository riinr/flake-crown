{
  description = ''API for www.eloverblik.dk'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eloverblik-master".dir   = "master";
  inputs."eloverblik-master".owner = "nim-nix-pkgs";
  inputs."eloverblik-master".ref   = "master";
  inputs."eloverblik-master".repo  = "eloverblik";
  inputs."eloverblik-master".type  = "github";
  inputs."eloverblik-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_1".dir   = "v0_0_1";
  inputs."eloverblik-v0_0_1".owner = "nim-nix-pkgs";
  inputs."eloverblik-v0_0_1".ref   = "master";
  inputs."eloverblik-v0_0_1".repo  = "eloverblik";
  inputs."eloverblik-v0_0_1".type  = "github";
  inputs."eloverblik-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_2".dir   = "v0_0_2";
  inputs."eloverblik-v0_0_2".owner = "nim-nix-pkgs";
  inputs."eloverblik-v0_0_2".ref   = "master";
  inputs."eloverblik-v0_0_2".repo  = "eloverblik";
  inputs."eloverblik-v0_0_2".type  = "github";
  inputs."eloverblik-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_4".dir   = "v0_0_4";
  inputs."eloverblik-v0_0_4".owner = "nim-nix-pkgs";
  inputs."eloverblik-v0_0_4".ref   = "master";
  inputs."eloverblik-v0_0_4".repo  = "eloverblik";
  inputs."eloverblik-v0_0_4".type  = "github";
  inputs."eloverblik-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_5".dir   = "v0_0_5";
  inputs."eloverblik-v0_0_5".owner = "nim-nix-pkgs";
  inputs."eloverblik-v0_0_5".ref   = "master";
  inputs."eloverblik-v0_0_5".repo  = "eloverblik";
  inputs."eloverblik-v0_0_5".type  = "github";
  inputs."eloverblik-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_6".dir   = "v0_0_6";
  inputs."eloverblik-v0_0_6".owner = "nim-nix-pkgs";
  inputs."eloverblik-v0_0_6".ref   = "master";
  inputs."eloverblik-v0_0_6".repo  = "eloverblik";
  inputs."eloverblik-v0_0_6".type  = "github";
  inputs."eloverblik-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_7".dir   = "v0_0_7";
  inputs."eloverblik-v0_0_7".owner = "nim-nix-pkgs";
  inputs."eloverblik-v0_0_7".ref   = "master";
  inputs."eloverblik-v0_0_7".repo  = "eloverblik";
  inputs."eloverblik-v0_0_7".type  = "github";
  inputs."eloverblik-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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