{
  description = ''rect is a command to crop/paste rectangle text.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rect-master".dir   = "master";
  inputs."rect-master".owner = "nim-nix-pkgs";
  inputs."rect-master".ref   = "master";
  inputs."rect-master".repo  = "rect";
  inputs."rect-master".type  = "github";
  inputs."rect-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rect-v1_0_0".dir   = "v1_0_0";
  inputs."rect-v1_0_0".owner = "nim-nix-pkgs";
  inputs."rect-v1_0_0".ref   = "master";
  inputs."rect-v1_0_0".repo  = "rect";
  inputs."rect-v1_0_0".type  = "github";
  inputs."rect-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rect-v1_0_1".dir   = "v1_0_1";
  inputs."rect-v1_0_1".owner = "nim-nix-pkgs";
  inputs."rect-v1_0_1".ref   = "master";
  inputs."rect-v1_0_1".repo  = "rect";
  inputs."rect-v1_0_1".type  = "github";
  inputs."rect-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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