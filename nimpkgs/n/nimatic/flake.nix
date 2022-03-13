{
  description = ''A static site generator written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimatic-master".dir   = "master";
  inputs."nimatic-master".owner = "nim-nix-pkgs";
  inputs."nimatic-master".ref   = "master";
  inputs."nimatic-master".repo  = "nimatic";
  inputs."nimatic-master".type  = "github";
  inputs."nimatic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimatic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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