{
  description = ''Simple text progress bars in Nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pronimgress-master".dir   = "master";
  inputs."pronimgress-master".owner = "nim-nix-pkgs";
  inputs."pronimgress-master".ref   = "master";
  inputs."pronimgress-master".repo  = "pronimgress";
  inputs."pronimgress-master".type  = "github";
  inputs."pronimgress-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pronimgress-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pronimgress-v0_1_0".dir   = "v0_1_0";
  inputs."pronimgress-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pronimgress-v0_1_0".ref   = "master";
  inputs."pronimgress-v0_1_0".repo  = "pronimgress";
  inputs."pronimgress-v0_1_0".type  = "github";
  inputs."pronimgress-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pronimgress-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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