{
  description = ''A simple gap buffer implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gapbuffer-master".dir   = "master";
  inputs."gapbuffer-master".owner = "nim-nix-pkgs";
  inputs."gapbuffer-master".ref   = "master";
  inputs."gapbuffer-master".repo  = "gapbuffer";
  inputs."gapbuffer-master".type  = "github";
  inputs."gapbuffer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gapbuffer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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