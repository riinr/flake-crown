{
  description = ''library for libharu'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libharu-master".dir   = "master";
  inputs."libharu-master".owner = "nim-nix-pkgs";
  inputs."libharu-master".ref   = "master";
  inputs."libharu-master".repo  = "libharu";
  inputs."libharu-master".type  = "github";
  inputs."libharu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libharu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libharu-v0_1_0".dir   = "v0_1_0";
  inputs."libharu-v0_1_0".owner = "nim-nix-pkgs";
  inputs."libharu-v0_1_0".ref   = "master";
  inputs."libharu-v0_1_0".repo  = "libharu";
  inputs."libharu-v0_1_0".type  = "github";
  inputs."libharu-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libharu-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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