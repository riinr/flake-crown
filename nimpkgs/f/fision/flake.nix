{
  description = ''important_packages with 0 dependencies and all unittests passing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fision-master".dir   = "master";
  inputs."fision-master".owner = "nim-nix-pkgs";
  inputs."fision-master".ref   = "master";
  inputs."fision-master".repo  = "fision";
  inputs."fision-master".type  = "github";
  inputs."fision-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fision-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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