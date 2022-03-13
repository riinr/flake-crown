{
  description = ''Ethereum bloom filter (deprecated, now part of the 'eth' package)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eth_bloom-master".dir   = "master";
  inputs."eth_bloom-master".owner = "nim-nix-pkgs";
  inputs."eth_bloom-master".ref   = "master";
  inputs."eth_bloom-master".repo  = "eth_bloom";
  inputs."eth_bloom-master".type  = "github";
  inputs."eth_bloom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_bloom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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