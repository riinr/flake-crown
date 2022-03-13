{
  description = ''Libravatar library for Nim, Gravatar alternative. Libravatar is an open source free federated avatar api & service.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libravatar-master".dir   = "master";
  inputs."libravatar-master".owner = "nim-nix-pkgs";
  inputs."libravatar-master".ref   = "master";
  inputs."libravatar-master".repo  = "libravatar";
  inputs."libravatar-master".type  = "github";
  inputs."libravatar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libravatar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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