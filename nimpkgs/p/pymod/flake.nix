{
  description = ''Auto-generate a Python module that wraps a Nim module.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pymod-master".dir   = "master";
  inputs."pymod-master".owner = "nim-nix-pkgs";
  inputs."pymod-master".ref   = "master";
  inputs."pymod-master".repo  = "pymod";
  inputs."pymod-master".type  = "github";
  inputs."pymod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pymod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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