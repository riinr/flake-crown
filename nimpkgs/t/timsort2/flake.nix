{
  description = ''timsort algorithm implemented in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timsort2-master".dir   = "master";
  inputs."timsort2-master".owner = "nim-nix-pkgs";
  inputs."timsort2-master".ref   = "master";
  inputs."timsort2-master".repo  = "timsort2";
  inputs."timsort2-master".type  = "github";
  inputs."timsort2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timsort2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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