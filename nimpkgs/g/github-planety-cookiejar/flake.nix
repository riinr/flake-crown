{
  description = ''HTTP Cookies for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cookiejar-master".dir   = "master";
  inputs."cookiejar-master".owner = "nim-nix-pkgs";
  inputs."cookiejar-master".ref   = "master";
  inputs."cookiejar-master".repo  = "cookiejar";
  inputs."cookiejar-master".type  = "github";
  inputs."cookiejar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-planety-cookiejar-v0_1_0".dir   = "v0_1_0";
  inputs."github-planety-cookiejar-v0_1_0".owner = "nim-nix-pkgs";
  inputs."github-planety-cookiejar-v0_1_0".ref   = "master";
  inputs."github-planety-cookiejar-v0_1_0".repo  = "github-planety-cookiejar";
  inputs."github-planety-cookiejar-v0_1_0".type  = "github";
  inputs."github-planety-cookiejar-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-planety-cookiejar-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cookiejar-v0_2_0".dir   = "v0_2_0";
  inputs."cookiejar-v0_2_0".owner = "nim-nix-pkgs";
  inputs."cookiejar-v0_2_0".ref   = "master";
  inputs."cookiejar-v0_2_0".repo  = "cookiejar";
  inputs."cookiejar-v0_2_0".type  = "github";
  inputs."cookiejar-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cookiejar-v0_3_0".dir   = "v0_3_0";
  inputs."cookiejar-v0_3_0".owner = "nim-nix-pkgs";
  inputs."cookiejar-v0_3_0".ref   = "master";
  inputs."cookiejar-v0_3_0".repo  = "cookiejar";
  inputs."cookiejar-v0_3_0".type  = "github";
  inputs."cookiejar-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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