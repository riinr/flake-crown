{
  description = ''Ethereum Web3 API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."web3-master".dir   = "master";
  inputs."web3-master".owner = "nim-nix-pkgs";
  inputs."web3-master".ref   = "master";
  inputs."web3-master".repo  = "web3";
  inputs."web3-master".type  = "github";
  inputs."web3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."web3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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