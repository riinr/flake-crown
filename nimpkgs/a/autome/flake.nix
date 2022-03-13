{
  description = ''Write GUI automation scripts with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."autome-master".dir   = "master";
  inputs."autome-master".owner = "nim-nix-pkgs";
  inputs."autome-master".ref   = "master";
  inputs."autome-master".repo  = "autome";
  inputs."autome-master".type  = "github";
  inputs."autome-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autome-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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