{
  description = ''String interpolation with printf syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stringinterpolation-master".dir   = "master";
  inputs."stringinterpolation-master".owner = "nim-nix-pkgs";
  inputs."stringinterpolation-master".ref   = "master";
  inputs."stringinterpolation-master".repo  = "stringinterpolation";
  inputs."stringinterpolation-master".type  = "github";
  inputs."stringinterpolation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stringinterpolation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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