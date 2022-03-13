{
  description = ''Library for interacting with Amazon Web Services (AWS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aws_sdk-master".dir   = "master";
  inputs."aws_sdk-master".owner = "nim-nix-pkgs";
  inputs."aws_sdk-master".ref   = "master";
  inputs."aws_sdk-master".repo  = "aws_sdk";
  inputs."aws_sdk-master".type  = "github";
  inputs."aws_sdk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aws_sdk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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