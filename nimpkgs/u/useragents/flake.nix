{
  description = ''User Agent parser for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."useragents-master".dir   = "master";
  inputs."useragents-master".owner = "nim-nix-pkgs";
  inputs."useragents-master".ref   = "master";
  inputs."useragents-master".repo  = "useragents";
  inputs."useragents-master".type  = "github";
  inputs."useragents-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."useragents-0_1_1".dir   = "0_1_1";
  inputs."useragents-0_1_1".owner = "nim-nix-pkgs";
  inputs."useragents-0_1_1".ref   = "master";
  inputs."useragents-0_1_1".repo  = "useragents";
  inputs."useragents-0_1_1".type  = "github";
  inputs."useragents-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."useragents-v0_1_1".dir   = "v0_1_1";
  inputs."useragents-v0_1_1".owner = "nim-nix-pkgs";
  inputs."useragents-v0_1_1".ref   = "master";
  inputs."useragents-v0_1_1".repo  = "useragents";
  inputs."useragents-v0_1_1".type  = "github";
  inputs."useragents-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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