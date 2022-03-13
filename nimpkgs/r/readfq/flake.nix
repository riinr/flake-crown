{
  description = ''Wrapper for Heng Li's kseq'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."readfq-master".dir   = "master";
  inputs."readfq-master".owner = "nim-nix-pkgs";
  inputs."readfq-master".ref   = "master";
  inputs."readfq-master".repo  = "readfq";
  inputs."readfq-master".type  = "github";
  inputs."readfq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."readfq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."readfq-v0_1_1".dir   = "v0_1_1";
  inputs."readfq-v0_1_1".owner = "nim-nix-pkgs";
  inputs."readfq-v0_1_1".ref   = "master";
  inputs."readfq-v0_1_1".repo  = "readfq";
  inputs."readfq-v0_1_1".type  = "github";
  inputs."readfq-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."readfq-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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