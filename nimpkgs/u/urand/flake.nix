{
  description = ''Simple method of obtaining secure random numbers from the OS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."urand-master".dir   = "master";
  inputs."urand-master".owner = "nim-nix-pkgs";
  inputs."urand-master".ref   = "master";
  inputs."urand-master".repo  = "urand";
  inputs."urand-master".type  = "github";
  inputs."urand-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urand-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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