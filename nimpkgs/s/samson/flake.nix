{
  description = ''Implementation of JSON5.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."samson-master".dir   = "master";
  inputs."samson-master".owner = "nim-nix-pkgs";
  inputs."samson-master".ref   = "master";
  inputs."samson-master".repo  = "samson";
  inputs."samson-master".type  = "github";
  inputs."samson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."samson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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