{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bump-1_8_27.flake = false;
  inputs.src-bump-1_8_27.ref   = "refs/tags/1.8.27";
  inputs.src-bump-1_8_27.owner = "disruptek";
  inputs.src-bump-1_8_27.repo  = "bump";
  inputs.src-bump-1_8_27.type  = "github";
  
  inputs."github-disruptek-cutelog".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog".ref   = "master";
  inputs."github-disruptek-cutelog".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog".dir   = "1_1_2";
  inputs."github-disruptek-cutelog".type  = "github";
  inputs."github-disruptek-cutelog".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls".ref   = "master";
  inputs."github-disruptek-balls".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls".dir   = "2_7_0";
  inputs."github-disruptek-balls".type  = "github";
  inputs."github-disruptek-balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_23";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_8_27"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bump-1_8_27";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}