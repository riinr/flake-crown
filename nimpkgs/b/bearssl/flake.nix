{
  description = ''Bindings to BearSSL library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bearssl-master".dir   = "master";
  inputs."bearssl-master".owner = "nim-nix-pkgs";
  inputs."bearssl-master".ref   = "master";
  inputs."bearssl-master".repo  = "bearssl";
  inputs."bearssl-master".type  = "github";
  inputs."bearssl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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