{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpx-master".dir   = "master";
  inputs."httpx-master".owner = "nim-nix-pkgs";
  inputs."httpx-master".ref   = "master";
  inputs."httpx-master".repo  = "httpx";
  inputs."httpx-master".type  = "github";
  inputs."httpx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_0".dir   = "v0_1_0";
  inputs."httpx-v0_1_0".owner = "nim-nix-pkgs";
  inputs."httpx-v0_1_0".ref   = "master";
  inputs."httpx-v0_1_0".repo  = "httpx";
  inputs."httpx-v0_1_0".type  = "github";
  inputs."httpx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_2".dir   = "v0_1_2";
  inputs."httpx-v0_1_2".owner = "nim-nix-pkgs";
  inputs."httpx-v0_1_2".ref   = "master";
  inputs."httpx-v0_1_2".repo  = "httpx";
  inputs."httpx-v0_1_2".type  = "github";
  inputs."httpx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_4".dir   = "v0_1_4";
  inputs."httpx-v0_1_4".owner = "nim-nix-pkgs";
  inputs."httpx-v0_1_4".ref   = "master";
  inputs."httpx-v0_1_4".repo  = "httpx";
  inputs."httpx-v0_1_4".type  = "github";
  inputs."httpx-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_6".dir   = "v0_1_6";
  inputs."httpx-v0_1_6".owner = "nim-nix-pkgs";
  inputs."httpx-v0_1_6".ref   = "master";
  inputs."httpx-v0_1_6".repo  = "httpx";
  inputs."httpx-v0_1_6".type  = "github";
  inputs."httpx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_8".dir   = "v0_1_8";
  inputs."httpx-v0_1_8".owner = "nim-nix-pkgs";
  inputs."httpx-v0_1_8".ref   = "master";
  inputs."httpx-v0_1_8".repo  = "httpx";
  inputs."httpx-v0_1_8".type  = "github";
  inputs."httpx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_0".dir   = "v0_2_0";
  inputs."httpx-v0_2_0".owner = "nim-nix-pkgs";
  inputs."httpx-v0_2_0".ref   = "master";
  inputs."httpx-v0_2_0".repo  = "httpx";
  inputs."httpx-v0_2_0".type  = "github";
  inputs."httpx-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_2".dir   = "v0_2_2";
  inputs."httpx-v0_2_2".owner = "nim-nix-pkgs";
  inputs."httpx-v0_2_2".ref   = "master";
  inputs."httpx-v0_2_2".repo  = "httpx";
  inputs."httpx-v0_2_2".type  = "github";
  inputs."httpx-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_4".dir   = "v0_2_4";
  inputs."httpx-v0_2_4".owner = "nim-nix-pkgs";
  inputs."httpx-v0_2_4".ref   = "master";
  inputs."httpx-v0_2_4".repo  = "httpx";
  inputs."httpx-v0_2_4".type  = "github";
  inputs."httpx-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_6".dir   = "v0_2_6";
  inputs."httpx-v0_2_6".owner = "nim-nix-pkgs";
  inputs."httpx-v0_2_6".ref   = "master";
  inputs."httpx-v0_2_6".repo  = "httpx";
  inputs."httpx-v0_2_6".type  = "github";
  inputs."httpx-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_8".dir   = "v0_2_8";
  inputs."httpx-v0_2_8".owner = "nim-nix-pkgs";
  inputs."httpx-v0_2_8".ref   = "master";
  inputs."httpx-v0_2_8".repo  = "httpx";
  inputs."httpx-v0_2_8".type  = "github";
  inputs."httpx-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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