{
  description = ''Pure Nim XML parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xml-devel".dir   = "devel";
  inputs."xml-devel".owner = "nim-nix-pkgs";
  inputs."xml-devel".ref   = "master";
  inputs."xml-devel".repo  = "xml";
  inputs."xml-devel".type  = "github";
  inputs."xml-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-master".dir   = "master";
  inputs."xml-master".owner = "nim-nix-pkgs";
  inputs."xml-master".ref   = "master";
  inputs."xml-master".repo  = "xml";
  inputs."xml-master".type  = "github";
  inputs."xml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_0".dir   = "0_1_0";
  inputs."xml-0_1_0".owner = "nim-nix-pkgs";
  inputs."xml-0_1_0".ref   = "master";
  inputs."xml-0_1_0".repo  = "xml";
  inputs."xml-0_1_0".type  = "github";
  inputs."xml-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_1".dir   = "0_1_1";
  inputs."xml-0_1_1".owner = "nim-nix-pkgs";
  inputs."xml-0_1_1".ref   = "master";
  inputs."xml-0_1_1".repo  = "xml";
  inputs."xml-0_1_1".type  = "github";
  inputs."xml-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_2".dir   = "0_1_2";
  inputs."xml-0_1_2".owner = "nim-nix-pkgs";
  inputs."xml-0_1_2".ref   = "master";
  inputs."xml-0_1_2".repo  = "xml";
  inputs."xml-0_1_2".type  = "github";
  inputs."xml-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_3".dir   = "0_1_3";
  inputs."xml-0_1_3".owner = "nim-nix-pkgs";
  inputs."xml-0_1_3".ref   = "master";
  inputs."xml-0_1_3".repo  = "xml";
  inputs."xml-0_1_3".type  = "github";
  inputs."xml-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-0_1_4".dir   = "0_1_4";
  inputs."xml-0_1_4".owner = "nim-nix-pkgs";
  inputs."xml-0_1_4".ref   = "master";
  inputs."xml-0_1_4".repo  = "xml";
  inputs."xml-0_1_4".type  = "github";
  inputs."xml-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml-devel".dir   = "devel";
  inputs."xml-devel".owner = "nim-nix-pkgs";
  inputs."xml-devel".ref   = "master";
  inputs."xml-devel".repo  = "xml";
  inputs."xml-devel".type  = "github";
  inputs."xml-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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