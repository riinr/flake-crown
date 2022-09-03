{
  description = ''continuation-passing style'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cps-0_0_31.flake = false;
  inputs.src-cps-0_0_31.ref   = "refs/tags/0.0.31";
  inputs.src-cps-0_0_31.owner = "disruptek";
  inputs.src-cps-0_0_31.repo  = "cps";
  inputs.src-cps-0_0_31.type  = "github";
  
  inputs."github-disruptek-balls".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls".ref   = "master";
  inputs."github-disruptek-balls".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls".dir   = "3_7_1";
  inputs."github-disruptek-balls".type  = "github";
  inputs."github-disruptek-balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion".owner = "nim-nix-pkgs";
  inputs."criterion".ref   = "master";
  inputs."criterion".repo  = "criterion";
  inputs."criterion".dir   = "0_2_8";
  inputs."criterion".type  = "github";
  inputs."criterion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cps-0_0_31"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cps-0_0_31";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}