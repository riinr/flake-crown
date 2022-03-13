{
  description = ''Nim bindings for the zxcvbn-c password strength estimation library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zxcvbn-master".dir   = "master";
  inputs."zxcvbn-master".owner = "nim-nix-pkgs";
  inputs."zxcvbn-master".ref   = "master";
  inputs."zxcvbn-master".repo  = "zxcvbn";
  inputs."zxcvbn-master".type  = "github";
  inputs."zxcvbn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zxcvbn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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