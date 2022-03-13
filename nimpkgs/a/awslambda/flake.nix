{
  description = ''A package to compile nim functions for AWS Lambda'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."awslambda-master".dir   = "master";
  inputs."awslambda-master".owner = "nim-nix-pkgs";
  inputs."awslambda-master".ref   = "master";
  inputs."awslambda-master".repo  = "awslambda";
  inputs."awslambda-master".type  = "github";
  inputs."awslambda-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awslambda-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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