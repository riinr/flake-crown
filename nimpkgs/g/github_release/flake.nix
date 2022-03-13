{
  description = ''github-release package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github_release-master".dir   = "master";
  inputs."github_release-master".owner = "nim-nix-pkgs";
  inputs."github_release-master".ref   = "master";
  inputs."github_release-master".repo  = "github_release";
  inputs."github_release-master".type  = "github";
  inputs."github_release-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-releases".dir   = "releases";
  inputs."github_release-releases".owner = "nim-nix-pkgs";
  inputs."github_release-releases".ref   = "master";
  inputs."github_release-releases".repo  = "github_release";
  inputs."github_release-releases".type  = "github";
  inputs."github_release-releases".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-releases".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_0".dir   = "v0_1_0";
  inputs."github_release-v0_1_0".owner = "nim-nix-pkgs";
  inputs."github_release-v0_1_0".ref   = "master";
  inputs."github_release-v0_1_0".repo  = "github_release";
  inputs."github_release-v0_1_0".type  = "github";
  inputs."github_release-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_0-alpha".dir   = "v0_1_0-alpha";
  inputs."github_release-v0_1_0-alpha".owner = "nim-nix-pkgs";
  inputs."github_release-v0_1_0-alpha".ref   = "master";
  inputs."github_release-v0_1_0-alpha".repo  = "github_release";
  inputs."github_release-v0_1_0-alpha".type  = "github";
  inputs."github_release-v0_1_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_1-alpha".dir   = "v0_1_1-alpha";
  inputs."github_release-v0_1_1-alpha".owner = "nim-nix-pkgs";
  inputs."github_release-v0_1_1-alpha".ref   = "master";
  inputs."github_release-v0_1_1-alpha".repo  = "github_release";
  inputs."github_release-v0_1_1-alpha".type  = "github";
  inputs."github_release-v0_1_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_2".dir   = "v0_1_2";
  inputs."github_release-v0_1_2".owner = "nim-nix-pkgs";
  inputs."github_release-v0_1_2".ref   = "master";
  inputs."github_release-v0_1_2".repo  = "github_release";
  inputs."github_release-v0_1_2".type  = "github";
  inputs."github_release-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_3".dir   = "v0_1_3";
  inputs."github_release-v0_1_3".owner = "nim-nix-pkgs";
  inputs."github_release-v0_1_3".ref   = "master";
  inputs."github_release-v0_1_3".repo  = "github_release";
  inputs."github_release-v0_1_3".type  = "github";
  inputs."github_release-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_4".dir   = "v0_1_4";
  inputs."github_release-v0_1_4".owner = "nim-nix-pkgs";
  inputs."github_release-v0_1_4".ref   = "master";
  inputs."github_release-v0_1_4".repo  = "github_release";
  inputs."github_release-v0_1_4".type  = "github";
  inputs."github_release-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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