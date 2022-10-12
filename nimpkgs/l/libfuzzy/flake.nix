{
  description = ''libfuzzy/ssdeep wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libfuzzy-master".dir   = "master";
  inputs."libfuzzy-master".owner = "nim-nix-pkgs";
  inputs."libfuzzy-master".ref   = "master";
  inputs."libfuzzy-master".repo  = "libfuzzy";
  inputs."libfuzzy-master".type  = "github";
  inputs."libfuzzy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libfuzzy-v0_1_0".dir   = "v0_1_0";
  inputs."libfuzzy-v0_1_0".owner = "nim-nix-pkgs";
  inputs."libfuzzy-v0_1_0".ref   = "master";
  inputs."libfuzzy-v0_1_0".repo  = "libfuzzy";
  inputs."libfuzzy-v0_1_0".type  = "github";
  inputs."libfuzzy-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzy-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libfuzzy-v0_1_0-1".dir   = "v0_1_0-1";
  inputs."libfuzzy-v0_1_0-1".owner = "nim-nix-pkgs";
  inputs."libfuzzy-v0_1_0-1".ref   = "master";
  inputs."libfuzzy-v0_1_0-1".repo  = "libfuzzy";
  inputs."libfuzzy-v0_1_0-1".type  = "github";
  inputs."libfuzzy-v0_1_0-1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzy-v0_1_0-1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libfuzzy-v0_1_0-2".dir   = "v0_1_0-2";
  inputs."libfuzzy-v0_1_0-2".owner = "nim-nix-pkgs";
  inputs."libfuzzy-v0_1_0-2".ref   = "master";
  inputs."libfuzzy-v0_1_0-2".repo  = "libfuzzy";
  inputs."libfuzzy-v0_1_0-2".type  = "github";
  inputs."libfuzzy-v0_1_0-2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzy-v0_1_0-2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libfuzzy-v0_1_1".dir   = "v0_1_1";
  inputs."libfuzzy-v0_1_1".owner = "nim-nix-pkgs";
  inputs."libfuzzy-v0_1_1".ref   = "master";
  inputs."libfuzzy-v0_1_1".repo  = "libfuzzy";
  inputs."libfuzzy-v0_1_1".type  = "github";
  inputs."libfuzzy-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzy-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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