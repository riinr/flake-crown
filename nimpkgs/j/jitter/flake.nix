{
  description = ''A git-based binary manager for linux.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jitter-main".dir   = "main";
  inputs."jitter-main".owner = "nim-nix-pkgs";
  inputs."jitter-main".ref   = "master";
  inputs."jitter-main".repo  = "jitter";
  inputs."jitter-main".type  = "github";
  inputs."jitter-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jitter-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jitter-v0_0_3".dir   = "v0_0_3";
  inputs."jitter-v0_0_3".owner = "nim-nix-pkgs";
  inputs."jitter-v0_0_3".ref   = "master";
  inputs."jitter-v0_0_3".repo  = "jitter";
  inputs."jitter-v0_0_3".type  = "github";
  inputs."jitter-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jitter-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jitter-v0_1_0".dir   = "v0_1_0";
  inputs."jitter-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jitter-v0_1_0".ref   = "master";
  inputs."jitter-v0_1_0".repo  = "jitter";
  inputs."jitter-v0_1_0".type  = "github";
  inputs."jitter-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jitter-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jitter-v0_2_4".dir   = "v0_2_4";
  inputs."jitter-v0_2_4".owner = "nim-nix-pkgs";
  inputs."jitter-v0_2_4".ref   = "master";
  inputs."jitter-v0_2_4".repo  = "jitter";
  inputs."jitter-v0_2_4".type  = "github";
  inputs."jitter-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jitter-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jitter-v0_3_0".dir   = "v0_3_0";
  inputs."jitter-v0_3_0".owner = "nim-nix-pkgs";
  inputs."jitter-v0_3_0".ref   = "master";
  inputs."jitter-v0_3_0".repo  = "jitter";
  inputs."jitter-v0_3_0".type  = "github";
  inputs."jitter-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jitter-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jitter-v0_3_9".dir   = "v0_3_9";
  inputs."jitter-v0_3_9".owner = "nim-nix-pkgs";
  inputs."jitter-v0_3_9".ref   = "master";
  inputs."jitter-v0_3_9".repo  = "jitter";
  inputs."jitter-v0_3_9".type  = "github";
  inputs."jitter-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jitter-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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