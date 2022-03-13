{
  description = ''A library for cleanly creating an object or tuple based on another object or tuple'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."basedon-master".dir   = "master";
  inputs."basedon-master".owner = "nim-nix-pkgs";
  inputs."basedon-master".ref   = "master";
  inputs."basedon-master".repo  = "basedon";
  inputs."basedon-master".type  = "github";
  inputs."basedon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."basedon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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