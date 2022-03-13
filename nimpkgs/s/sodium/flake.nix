{
  description = ''High-level libsodium bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sodium-master".dir   = "master";
  inputs."sodium-master".owner = "nim-nix-pkgs";
  inputs."sodium-master".ref   = "master";
  inputs."sodium-master".repo  = "sodium";
  inputs."sodium-master".type  = "github";
  inputs."sodium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sodium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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