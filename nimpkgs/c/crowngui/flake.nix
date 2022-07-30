{
  description = ''Web Technologies based Crossplatform GUI Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."crowngui-devel".dir   = "devel";
  inputs."crowngui-devel".owner = "nim-nix-pkgs";
  inputs."crowngui-devel".ref   = "master";
  inputs."crowngui-devel".repo  = "crowngui";
  inputs."crowngui-devel".type  = "github";
  inputs."crowngui-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-master".dir   = "master";
  inputs."crowngui-master".owner = "nim-nix-pkgs";
  inputs."crowngui-master".ref   = "master";
  inputs."crowngui-master".repo  = "crowngui";
  inputs."crowngui-master".type  = "github";
  inputs."crowngui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_3".dir   = "v0_2_3";
  inputs."crowngui-v0_2_3".owner = "nim-nix-pkgs";
  inputs."crowngui-v0_2_3".ref   = "master";
  inputs."crowngui-v0_2_3".repo  = "crowngui";
  inputs."crowngui-v0_2_3".type  = "github";
  inputs."crowngui-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_4".dir   = "v0_2_4";
  inputs."crowngui-v0_2_4".owner = "nim-nix-pkgs";
  inputs."crowngui-v0_2_4".ref   = "master";
  inputs."crowngui-v0_2_4".repo  = "crowngui";
  inputs."crowngui-v0_2_4".type  = "github";
  inputs."crowngui-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_7".dir   = "v0_2_7";
  inputs."crowngui-v0_2_7".owner = "nim-nix-pkgs";
  inputs."crowngui-v0_2_7".ref   = "master";
  inputs."crowngui-v0_2_7".repo  = "crowngui";
  inputs."crowngui-v0_2_7".type  = "github";
  inputs."crowngui-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_8".dir   = "v0_2_8";
  inputs."crowngui-v0_2_8".owner = "nim-nix-pkgs";
  inputs."crowngui-v0_2_8".ref   = "master";
  inputs."crowngui-v0_2_8".repo  = "crowngui";
  inputs."crowngui-v0_2_8".type  = "github";
  inputs."crowngui-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_9".dir   = "v0_2_9";
  inputs."crowngui-v0_2_9".owner = "nim-nix-pkgs";
  inputs."crowngui-v0_2_9".ref   = "master";
  inputs."crowngui-v0_2_9".repo  = "crowngui";
  inputs."crowngui-v0_2_9".type  = "github";
  inputs."crowngui-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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