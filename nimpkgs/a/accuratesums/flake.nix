{
  description = ''Accurate Floating Point Sums and Products.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."accuratesums-master".dir   = "master";
  inputs."accuratesums-master".owner = "nim-nix-pkgs";
  inputs."accuratesums-master".ref   = "master";
  inputs."accuratesums-master".repo  = "accuratesums";
  inputs."accuratesums-master".type  = "github";
  inputs."accuratesums-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."accuratesums-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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