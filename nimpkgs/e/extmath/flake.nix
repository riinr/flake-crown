{
  description = ''Nim math library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."extmath-master".dir   = "master";
  inputs."extmath-master".owner = "nim-nix-pkgs";
  inputs."extmath-master".ref   = "master";
  inputs."extmath-master".repo  = "extmath";
  inputs."extmath-master".type  = "github";
  inputs."extmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."extmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."extmath-v1_0".dir   = "v1_0";
  inputs."extmath-v1_0".owner = "nim-nix-pkgs";
  inputs."extmath-v1_0".ref   = "master";
  inputs."extmath-v1_0".repo  = "extmath";
  inputs."extmath-v1_0".type  = "github";
  inputs."extmath-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."extmath-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."extmath-v1_1".dir   = "v1_1";
  inputs."extmath-v1_1".owner = "nim-nix-pkgs";
  inputs."extmath-v1_1".ref   = "master";
  inputs."extmath-v1_1".repo  = "extmath";
  inputs."extmath-v1_1".type  = "github";
  inputs."extmath-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."extmath-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."extmath-v1_2".dir   = "v1_2";
  inputs."extmath-v1_2".owner = "nim-nix-pkgs";
  inputs."extmath-v1_2".ref   = "master";
  inputs."extmath-v1_2".repo  = "extmath";
  inputs."extmath-v1_2".type  = "github";
  inputs."extmath-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."extmath-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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