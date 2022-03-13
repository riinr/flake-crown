{
  description = ''A nimterop wrapper for the opus audio decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opus-master".dir   = "master";
  inputs."opus-master".owner = "nim-nix-pkgs";
  inputs."opus-master".ref   = "master";
  inputs."opus-master".repo  = "opus";
  inputs."opus-master".type  = "github";
  inputs."opus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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