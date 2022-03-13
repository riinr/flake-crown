{
  description = ''a wrapper for the Canvas API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jscanvas-master".dir   = "master";
  inputs."jscanvas-master".owner = "nim-nix-pkgs";
  inputs."jscanvas-master".ref   = "master";
  inputs."jscanvas-master".repo  = "jscanvas";
  inputs."jscanvas-master".type  = "github";
  inputs."jscanvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jscanvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jscanvas-v0_1_0".dir   = "v0_1_0";
  inputs."jscanvas-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jscanvas-v0_1_0".ref   = "master";
  inputs."jscanvas-v0_1_0".repo  = "jscanvas";
  inputs."jscanvas-v0_1_0".type  = "github";
  inputs."jscanvas-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jscanvas-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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