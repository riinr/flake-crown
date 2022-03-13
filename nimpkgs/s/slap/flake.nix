{
  description = ''A SLow And Powerless programming language written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slap-master".dir   = "master";
  inputs."slap-master".owner = "nim-nix-pkgs";
  inputs."slap-master".ref   = "master";
  inputs."slap-master".repo  = "slap";
  inputs."slap-master".type  = "github";
  inputs."slap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slap-0_0_1".dir   = "0_0_1";
  inputs."slap-0_0_1".owner = "nim-nix-pkgs";
  inputs."slap-0_0_1".ref   = "master";
  inputs."slap-0_0_1".repo  = "slap";
  inputs."slap-0_0_1".type  = "github";
  inputs."slap-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slap-0_0_2".dir   = "0_0_2";
  inputs."slap-0_0_2".owner = "nim-nix-pkgs";
  inputs."slap-0_0_2".ref   = "master";
  inputs."slap-0_0_2".repo  = "slap";
  inputs."slap-0_0_2".type  = "github";
  inputs."slap-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slap-0_0_3".dir   = "0_0_3";
  inputs."slap-0_0_3".owner = "nim-nix-pkgs";
  inputs."slap-0_0_3".ref   = "master";
  inputs."slap-0_0_3".repo  = "slap";
  inputs."slap-0_0_3".type  = "github";
  inputs."slap-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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