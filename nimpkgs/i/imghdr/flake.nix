{
  description = ''Library for detecting the format of an image'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."imghdr-master".dir   = "master";
  inputs."imghdr-master".owner = "nim-nix-pkgs";
  inputs."imghdr-master".ref   = "master";
  inputs."imghdr-master".repo  = "imghdr";
  inputs."imghdr-master".type  = "github";
  inputs."imghdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imghdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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