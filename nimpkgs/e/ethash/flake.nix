{
  description = ''A Nim implementation of Ethash, the ethereum proof-of-work hashing function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ethash-master".dir   = "master";
  inputs."ethash-master".owner = "nim-nix-pkgs";
  inputs."ethash-master".ref   = "master";
  inputs."ethash-master".repo  = "ethash";
  inputs."ethash-master".type  = "github";
  inputs."ethash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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