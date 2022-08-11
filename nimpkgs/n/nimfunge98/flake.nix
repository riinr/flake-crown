{
  description = ''A Funge-98 interpreter written in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfunge98-master".dir   = "master";
  inputs."nimfunge98-master".owner = "nim-nix-pkgs";
  inputs."nimfunge98-master".ref   = "master";
  inputs."nimfunge98-master".repo  = "nimfunge98";
  inputs."nimfunge98-master".type  = "github";
  inputs."nimfunge98-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfunge98-1_0_0".dir   = "1_0_0";
  inputs."nimfunge98-1_0_0".owner = "nim-nix-pkgs";
  inputs."nimfunge98-1_0_0".ref   = "master";
  inputs."nimfunge98-1_0_0".repo  = "nimfunge98";
  inputs."nimfunge98-1_0_0".type  = "github";
  inputs."nimfunge98-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfunge98-1_0_1".dir   = "1_0_1";
  inputs."nimfunge98-1_0_1".owner = "nim-nix-pkgs";
  inputs."nimfunge98-1_0_1".ref   = "master";
  inputs."nimfunge98-1_0_1".repo  = "nimfunge98";
  inputs."nimfunge98-1_0_1".type  = "github";
  inputs."nimfunge98-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfunge98-1_0_2".dir   = "1_0_2";
  inputs."nimfunge98-1_0_2".owner = "nim-nix-pkgs";
  inputs."nimfunge98-1_0_2".ref   = "master";
  inputs."nimfunge98-1_0_2".repo  = "nimfunge98";
  inputs."nimfunge98-1_0_2".type  = "github";
  inputs."nimfunge98-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfunge98-1_1_0".dir   = "1_1_0";
  inputs."nimfunge98-1_1_0".owner = "nim-nix-pkgs";
  inputs."nimfunge98-1_1_0".ref   = "master";
  inputs."nimfunge98-1_1_0".repo  = "nimfunge98";
  inputs."nimfunge98-1_1_0".type  = "github";
  inputs."nimfunge98-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfunge98-1_1_1".dir   = "1_1_1";
  inputs."nimfunge98-1_1_1".owner = "nim-nix-pkgs";
  inputs."nimfunge98-1_1_1".ref   = "master";
  inputs."nimfunge98-1_1_1".repo  = "nimfunge98";
  inputs."nimfunge98-1_1_1".type  = "github";
  inputs."nimfunge98-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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