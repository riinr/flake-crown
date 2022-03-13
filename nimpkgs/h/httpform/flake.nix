{
  description = ''Http request form parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpform-master".dir   = "master";
  inputs."httpform-master".owner = "nim-nix-pkgs";
  inputs."httpform-master".ref   = "master";
  inputs."httpform-master".repo  = "httpform";
  inputs."httpform-master".type  = "github";
  inputs."httpform-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpform-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpform-0_1_0".dir   = "0_1_0";
  inputs."httpform-0_1_0".owner = "nim-nix-pkgs";
  inputs."httpform-0_1_0".ref   = "master";
  inputs."httpform-0_1_0".repo  = "httpform";
  inputs."httpform-0_1_0".type  = "github";
  inputs."httpform-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpform-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpform-0_2_0".dir   = "0_2_0";
  inputs."httpform-0_2_0".owner = "nim-nix-pkgs";
  inputs."httpform-0_2_0".ref   = "master";
  inputs."httpform-0_2_0".repo  = "httpform";
  inputs."httpform-0_2_0".type  = "github";
  inputs."httpform-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpform-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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