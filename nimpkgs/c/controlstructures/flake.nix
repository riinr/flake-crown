{
  description = ''Additional control structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."controlstructures-master".dir   = "master";
  inputs."controlstructures-master".owner = "nim-nix-pkgs";
  inputs."controlstructures-master".ref   = "master";
  inputs."controlstructures-master".repo  = "controlstructures";
  inputs."controlstructures-master".type  = "github";
  inputs."controlstructures-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."controlstructures-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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