{
  description = ''blake2 - cryptographic hash function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."blake2-master".dir   = "master";
  inputs."blake2-master".owner = "nim-nix-pkgs";
  inputs."blake2-master".ref   = "master";
  inputs."blake2-master".repo  = "blake2";
  inputs."blake2-master".type  = "github";
  inputs."blake2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blake2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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