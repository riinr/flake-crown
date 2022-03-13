{
  description = ''A library for playing audio files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parasound-master".dir   = "master";
  inputs."parasound-master".owner = "nim-nix-pkgs";
  inputs."parasound-master".ref   = "master";
  inputs."parasound-master".repo  = "parasound";
  inputs."parasound-master".type  = "github";
  inputs."parasound-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound-0_1_0".dir   = "0_1_0";
  inputs."parasound-0_1_0".owner = "nim-nix-pkgs";
  inputs."parasound-0_1_0".ref   = "master";
  inputs."parasound-0_1_0".repo  = "parasound";
  inputs."parasound-0_1_0".type  = "github";
  inputs."parasound-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound-0_2_0".dir   = "0_2_0";
  inputs."parasound-0_2_0".owner = "nim-nix-pkgs";
  inputs."parasound-0_2_0".ref   = "master";
  inputs."parasound-0_2_0".repo  = "parasound";
  inputs."parasound-0_2_0".type  = "github";
  inputs."parasound-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound-1_0_0".dir   = "1_0_0";
  inputs."parasound-1_0_0".owner = "nim-nix-pkgs";
  inputs."parasound-1_0_0".ref   = "master";
  inputs."parasound-1_0_0".repo  = "parasound";
  inputs."parasound-1_0_0".type  = "github";
  inputs."parasound-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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