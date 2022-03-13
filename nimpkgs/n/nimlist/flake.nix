{
  description = ''View nim packages in your browser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlist-master".dir   = "master";
  inputs."nimlist-master".owner = "nim-nix-pkgs";
  inputs."nimlist-master".ref   = "master";
  inputs."nimlist-master".repo  = "nimlist";
  inputs."nimlist-master".type  = "github";
  inputs."nimlist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_1".dir   = "v0_1_1";
  inputs."nimlist-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimlist-v0_1_1".ref   = "master";
  inputs."nimlist-v0_1_1".repo  = "nimlist";
  inputs."nimlist-v0_1_1".type  = "github";
  inputs."nimlist-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_2".dir   = "v0_1_2";
  inputs."nimlist-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimlist-v0_1_2".ref   = "master";
  inputs."nimlist-v0_1_2".repo  = "nimlist";
  inputs."nimlist-v0_1_2".type  = "github";
  inputs."nimlist-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_3".dir   = "v0_1_3";
  inputs."nimlist-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimlist-v0_1_3".ref   = "master";
  inputs."nimlist-v0_1_3".repo  = "nimlist";
  inputs."nimlist-v0_1_3".type  = "github";
  inputs."nimlist-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_4".dir   = "v0_1_4";
  inputs."nimlist-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimlist-v0_1_4".ref   = "master";
  inputs."nimlist-v0_1_4".repo  = "nimlist";
  inputs."nimlist-v0_1_4".type  = "github";
  inputs."nimlist-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlist-v0_1_5".dir   = "v0_1_5";
  inputs."nimlist-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nimlist-v0_1_5".ref   = "master";
  inputs."nimlist-v0_1_5".repo  = "nimlist";
  inputs."nimlist-v0_1_5".type  = "github";
  inputs."nimlist-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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