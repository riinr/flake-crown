{
  description = ''Loop efficiently over a variadic number of containers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."loopfusion-master".dir   = "master";
  inputs."loopfusion-master".owner = "nim-nix-pkgs";
  inputs."loopfusion-master".ref   = "master";
  inputs."loopfusion-master".repo  = "loopfusion";
  inputs."loopfusion-master".type  = "github";
  inputs."loopfusion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loopfusion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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