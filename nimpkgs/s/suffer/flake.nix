{
  description = ''a nim library for drawing 2d shapes, text, and images to 32bit software pixel buffers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."suffer-master".dir   = "master";
  inputs."suffer-master".owner = "nim-nix-pkgs";
  inputs."suffer-master".ref   = "master";
  inputs."suffer-master".repo  = "suffer";
  inputs."suffer-master".type  = "github";
  inputs."suffer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suffer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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