{
  description = ''TagLib Audio Meta-Data Library wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."taglib-master".dir   = "master";
  inputs."taglib-master".owner = "nim-nix-pkgs";
  inputs."taglib-master".ref   = "master";
  inputs."taglib-master".repo  = "taglib";
  inputs."taglib-master".type  = "github";
  inputs."taglib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taglib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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