{
  description = ''Directory listing tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lq-master".dir   = "master";
  inputs."lq-master".owner = "nim-nix-pkgs";
  inputs."lq-master".ref   = "master";
  inputs."lq-master".repo  = "lq";
  inputs."lq-master".type  = "github";
  inputs."lq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-1_0_0".dir   = "1_0_0";
  inputs."lq-1_0_0".owner = "nim-nix-pkgs";
  inputs."lq-1_0_0".ref   = "master";
  inputs."lq-1_0_0".repo  = "lq";
  inputs."lq-1_0_0".type  = "github";
  inputs."lq-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-1_0_1".dir   = "1_0_1";
  inputs."lq-1_0_1".owner = "nim-nix-pkgs";
  inputs."lq-1_0_1".ref   = "master";
  inputs."lq-1_0_1".repo  = "lq";
  inputs."lq-1_0_1".type  = "github";
  inputs."lq-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-2_0_0".dir   = "2_0_0";
  inputs."lq-2_0_0".owner = "nim-nix-pkgs";
  inputs."lq-2_0_0".ref   = "master";
  inputs."lq-2_0_0".repo  = "lq";
  inputs."lq-2_0_0".type  = "github";
  inputs."lq-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-2_2_0".dir   = "2_2_0";
  inputs."lq-2_2_0".owner = "nim-nix-pkgs";
  inputs."lq-2_2_0".ref   = "master";
  inputs."lq-2_2_0".repo  = "lq";
  inputs."lq-2_2_0".type  = "github";
  inputs."lq-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-2_2_1".dir   = "2_2_1";
  inputs."lq-2_2_1".owner = "nim-nix-pkgs";
  inputs."lq-2_2_1".ref   = "master";
  inputs."lq-2_2_1".repo  = "lq";
  inputs."lq-2_2_1".type  = "github";
  inputs."lq-2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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