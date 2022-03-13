{
  description = ''Nim cryptographic library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcrypto-master".dir   = "master";
  inputs."nimcrypto-master".owner = "nim-nix-pkgs";
  inputs."nimcrypto-master".ref   = "master";
  inputs."nimcrypto-master".repo  = "nimcrypto";
  inputs."nimcrypto-master".type  = "github";
  inputs."nimcrypto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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