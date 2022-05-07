{
  description = ''A package which uses libclang to parse C headers into Nim files for easy interop'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-futhark-v0_6_1.flake = false;
  inputs.src-futhark-v0_6_1.ref   = "refs/tags/v0.6.1";
  inputs.src-futhark-v0_6_1.owner = "PMunch";
  inputs.src-futhark-v0_6_1.repo  = "futhark";
  inputs.src-futhark-v0_6_1.type  = "github";
  
  inputs."github-pmunch-libclang".owner = "nim-nix-pkgs";
  inputs."github-pmunch-libclang".ref   = "master";
  inputs."github-pmunch-libclang".repo  = "github-pmunch-libclang";
  inputs."github-pmunch-libclang".dir   = "v0_59";
  inputs."github-pmunch-libclang".type  = "github";
  inputs."github-pmunch-libclang".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-pmunch-libclang".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termstyle".owner = "nim-nix-pkgs";
  inputs."termstyle".ref   = "master";
  inputs."termstyle".repo  = "termstyle";
  inputs."termstyle".dir   = "master";
  inputs."termstyle".type  = "github";
  inputs."termstyle".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termstyle".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils".owner = "nim-nix-pkgs";
  inputs."macroutils".ref   = "master";
  inputs."macroutils".repo  = "macroutils";
  inputs."macroutils".dir   = "v1_2_0";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-futhark-v0_6_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-futhark-v0_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}