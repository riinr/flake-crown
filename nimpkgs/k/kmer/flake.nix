{
  description = ''encoded kmer library for fast operations on kmers up to 31'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kmer-master".url = "path:./master";
  inputs."kmer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kmer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kmer-v0_2_5".url = "path:./v0_2_5";
  inputs."kmer-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kmer-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kmer-v0_2_6".url = "path:./v0_2_6";
  inputs."kmer-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kmer-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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