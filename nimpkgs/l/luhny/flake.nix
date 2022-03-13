{
  description = ''Luhn's Algorithm implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."luhny-master".dir   = "master";
  inputs."luhny-master".owner = "nim-nix-pkgs";
  inputs."luhny-master".ref   = "master";
  inputs."luhny-master".repo  = "luhny";
  inputs."luhny-master".type  = "github";
  inputs."luhny-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."luhny-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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