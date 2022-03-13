{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cairo-master".dir   = "master";
  inputs."cairo-master".owner = "nim-nix-pkgs";
  inputs."cairo-master".ref   = "master";
  inputs."cairo-master".repo  = "cairo";
  inputs."cairo-master".type  = "github";
  inputs."cairo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo-1_1_0".dir   = "1_1_0";
  inputs."cairo-1_1_0".owner = "nim-nix-pkgs";
  inputs."cairo-1_1_0".ref   = "master";
  inputs."cairo-1_1_0".repo  = "cairo";
  inputs."cairo-1_1_0".type  = "github";
  inputs."cairo-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo-1_1_1".dir   = "1_1_1";
  inputs."cairo-1_1_1".owner = "nim-nix-pkgs";
  inputs."cairo-1_1_1".ref   = "master";
  inputs."cairo-1_1_1".repo  = "cairo";
  inputs."cairo-1_1_1".type  = "github";
  inputs."cairo-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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