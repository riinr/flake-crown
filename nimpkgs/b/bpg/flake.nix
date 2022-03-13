{
  description = ''BPG (Better Portable Graphics) for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bpg-master".dir   = "master";
  inputs."bpg-master".owner = "nim-nix-pkgs";
  inputs."bpg-master".ref   = "master";
  inputs."bpg-master".repo  = "bpg";
  inputs."bpg-master".type  = "github";
  inputs."bpg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bpg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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