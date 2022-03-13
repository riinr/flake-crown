{
  description = ''See pictures in your console'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."imgcat-master".dir   = "master";
  inputs."imgcat-master".owner = "nim-nix-pkgs";
  inputs."imgcat-master".ref   = "master";
  inputs."imgcat-master".repo  = "imgcat";
  inputs."imgcat-master".type  = "github";
  inputs."imgcat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imgcat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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