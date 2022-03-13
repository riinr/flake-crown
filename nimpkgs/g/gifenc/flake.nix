{
  description = ''Gif Encoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gifenc-master".dir   = "master";
  inputs."gifenc-master".owner = "nim-nix-pkgs";
  inputs."gifenc-master".ref   = "master";
  inputs."gifenc-master".repo  = "gifenc";
  inputs."gifenc-master".type  = "github";
  inputs."gifenc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gifenc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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