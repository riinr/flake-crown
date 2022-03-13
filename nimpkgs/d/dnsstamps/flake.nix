{
  description = ''An implementation of DNS server stamps in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dnsstamps-master".dir   = "master";
  inputs."dnsstamps-master".owner = "nim-nix-pkgs";
  inputs."dnsstamps-master".ref   = "master";
  inputs."dnsstamps-master".repo  = "dnsstamps";
  inputs."dnsstamps-master".type  = "github";
  inputs."dnsstamps-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsstamps-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsstamps-0_1_0".dir   = "0_1_0";
  inputs."dnsstamps-0_1_0".owner = "nim-nix-pkgs";
  inputs."dnsstamps-0_1_0".ref   = "master";
  inputs."dnsstamps-0_1_0".repo  = "dnsstamps";
  inputs."dnsstamps-0_1_0".type  = "github";
  inputs."dnsstamps-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsstamps-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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