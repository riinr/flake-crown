{
  description = ''CircleCI API client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."circleci_client-master".dir   = "master";
  inputs."circleci_client-master".owner = "nim-nix-pkgs";
  inputs."circleci_client-master".ref   = "master";
  inputs."circleci_client-master".repo  = "circleci_client";
  inputs."circleci_client-master".type  = "github";
  inputs."circleci_client-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."circleci_client-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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