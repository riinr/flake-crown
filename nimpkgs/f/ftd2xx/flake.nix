{
  description = ''Nim wrapper for FTDI ftd2xx library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ftd2xx-main".dir   = "main";
  inputs."ftd2xx-main".owner = "nim-nix-pkgs";
  inputs."ftd2xx-main".ref   = "master";
  inputs."ftd2xx-main".repo  = "ftd2xx";
  inputs."ftd2xx-main".type  = "github";
  inputs."ftd2xx-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ftd2xx-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ftd2xx-0_0_1".dir   = "0_0_1";
  inputs."ftd2xx-0_0_1".owner = "nim-nix-pkgs";
  inputs."ftd2xx-0_0_1".ref   = "master";
  inputs."ftd2xx-0_0_1".repo  = "ftd2xx";
  inputs."ftd2xx-0_0_1".type  = "github";
  inputs."ftd2xx-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ftd2xx-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ftd2xx-0_0_2".dir   = "0_0_2";
  inputs."ftd2xx-0_0_2".owner = "nim-nix-pkgs";
  inputs."ftd2xx-0_0_2".ref   = "master";
  inputs."ftd2xx-0_0_2".repo  = "ftd2xx";
  inputs."ftd2xx-0_0_2".type  = "github";
  inputs."ftd2xx-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ftd2xx-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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