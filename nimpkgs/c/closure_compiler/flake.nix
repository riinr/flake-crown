{
  description = ''Bindings for Closure Compiler web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."closure_compiler-master".dir   = "master";
  inputs."closure_compiler-master".owner = "nim-nix-pkgs";
  inputs."closure_compiler-master".ref   = "master";
  inputs."closure_compiler-master".repo  = "closure_compiler";
  inputs."closure_compiler-master".type  = "github";
  inputs."closure_compiler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_2".dir   = "v0_2";
  inputs."closure_compiler-v0_2".owner = "nim-nix-pkgs";
  inputs."closure_compiler-v0_2".ref   = "master";
  inputs."closure_compiler-v0_2".repo  = "closure_compiler";
  inputs."closure_compiler-v0_2".type  = "github";
  inputs."closure_compiler-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3".dir   = "v0_3";
  inputs."closure_compiler-v0_3".owner = "nim-nix-pkgs";
  inputs."closure_compiler-v0_3".ref   = "master";
  inputs."closure_compiler-v0_3".repo  = "closure_compiler";
  inputs."closure_compiler-v0_3".type  = "github";
  inputs."closure_compiler-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_1".dir   = "v0_3_1";
  inputs."closure_compiler-v0_3_1".owner = "nim-nix-pkgs";
  inputs."closure_compiler-v0_3_1".ref   = "master";
  inputs."closure_compiler-v0_3_1".repo  = "closure_compiler";
  inputs."closure_compiler-v0_3_1".type  = "github";
  inputs."closure_compiler-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_2".dir   = "v0_3_2";
  inputs."closure_compiler-v0_3_2".owner = "nim-nix-pkgs";
  inputs."closure_compiler-v0_3_2".ref   = "master";
  inputs."closure_compiler-v0_3_2".repo  = "closure_compiler";
  inputs."closure_compiler-v0_3_2".type  = "github";
  inputs."closure_compiler-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_3".dir   = "v0_3_3";
  inputs."closure_compiler-v0_3_3".owner = "nim-nix-pkgs";
  inputs."closure_compiler-v0_3_3".ref   = "master";
  inputs."closure_compiler-v0_3_3".repo  = "closure_compiler";
  inputs."closure_compiler-v0_3_3".type  = "github";
  inputs."closure_compiler-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_4".dir   = "v0_3_4";
  inputs."closure_compiler-v0_3_4".owner = "nim-nix-pkgs";
  inputs."closure_compiler-v0_3_4".ref   = "master";
  inputs."closure_compiler-v0_3_4".repo  = "closure_compiler";
  inputs."closure_compiler-v0_3_4".type  = "github";
  inputs."closure_compiler-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_5".dir   = "v0_3_5";
  inputs."closure_compiler-v0_3_5".owner = "nim-nix-pkgs";
  inputs."closure_compiler-v0_3_5".ref   = "master";
  inputs."closure_compiler-v0_3_5".repo  = "closure_compiler";
  inputs."closure_compiler-v0_3_5".type  = "github";
  inputs."closure_compiler-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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