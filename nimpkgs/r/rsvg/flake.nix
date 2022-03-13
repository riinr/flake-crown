{
  description = ''Wrapper for librsvg, a Scalable Vector Graphics (SVG) rendering library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rsvg-master".dir   = "master";
  inputs."rsvg-master".owner = "nim-nix-pkgs";
  inputs."rsvg-master".ref   = "master";
  inputs."rsvg-master".repo  = "rsvg";
  inputs."rsvg-master".type  = "github";
  inputs."rsvg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rsvg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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