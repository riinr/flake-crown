{
  description = ''Generate icon files from PNG files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."icon-master".dir   = "master";
  inputs."icon-master".owner = "nim-nix-pkgs";
  inputs."icon-master".ref   = "master";
  inputs."icon-master".repo  = "icon";
  inputs."icon-master".type  = "github";
  inputs."icon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."icon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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