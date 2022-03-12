{
  description = ''Wrapper for Heng Li's kseq'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."readfq-master".url = "path:./master";
  inputs."readfq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."readfq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."readfq-v0_1_1".url = "path:./v0_1_1";
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