{
  description = ''A wrapper for the zip library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zip-master".dir   = "master";
  inputs."zip-master".owner = "nim-nix-pkgs";
  inputs."zip-master".ref   = "master";
  inputs."zip-master".repo  = "zip";
  inputs."zip-master".type  = "github";
  inputs."zip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip-0_3_1".dir   = "0_3_1";
  inputs."zip-0_3_1".owner = "nim-nix-pkgs";
  inputs."zip-0_3_1".ref   = "master";
  inputs."zip-0_3_1".repo  = "zip";
  inputs."zip-0_3_1".type  = "github";
  inputs."zip-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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