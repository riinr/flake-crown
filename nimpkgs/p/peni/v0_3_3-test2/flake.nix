{
  description = ''PE tool based on libpe (with no S)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-peni-v0_3_3-test2.flake = false;
  inputs.src-peni-v0_3_3-test2.ref   = "refs/tags/v0.3.3-test2";
  inputs.src-peni-v0_3_3-test2.owner = "srozb";
  inputs.src-peni-v0_3_3-test2.repo  = "peni";
  inputs.src-peni-v0_3_3-test2.type  = "github";
  
  inputs."libpe".owner = "nim-nix-pkgs";
  inputs."libpe".ref   = "master";
  inputs."libpe".repo  = "libpe";
  inputs."libpe".dir   = "v0_3_6";
  inputs."libpe".type  = "github";
  inputs."libpe".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libpe".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_32";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nancy".owner = "nim-nix-pkgs";
  inputs."nancy".ref   = "master";
  inputs."nancy".repo  = "nancy";
  inputs."nancy".dir   = "master";
  inputs."nancy".type  = "github";
  inputs."nancy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nancy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termstyle".owner = "nim-nix-pkgs";
  inputs."termstyle".ref   = "master";
  inputs."termstyle".repo  = "termstyle";
  inputs."termstyle".dir   = "master";
  inputs."termstyle".type  = "github";
  inputs."termstyle".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termstyle".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flower".owner = "nim-nix-pkgs";
  inputs."flower".ref   = "master";
  inputs."flower".repo  = "flower";
  inputs."flower".dir   = "main";
  inputs."flower".type  = "github";
  inputs."flower".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flower".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".owner = "nim-nix-pkgs";
  inputs."flatty".ref   = "master";
  inputs."flatty".repo  = "flatty";
  inputs."flatty".dir   = "0_3_4";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-peni-v0_3_3-test2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-peni-v0_3_3-test2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}