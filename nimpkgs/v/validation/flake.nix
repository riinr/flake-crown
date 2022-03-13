{
  description = ''Nim object validation using type field pragmas'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."validation-master".dir   = "master";
  inputs."validation-master".owner = "nim-nix-pkgs";
  inputs."validation-master".ref   = "master";
  inputs."validation-master".repo  = "validation";
  inputs."validation-master".type  = "github";
  inputs."validation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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