{
  description = ''continuation-passing style'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cps-0_0_5.flake = false;
  inputs.src-cps-0_0_5.ref   = "refs/tags/0.0.5";
  inputs.src-cps-0_0_5.owner = "disruptek";
  inputs.src-cps-0_0_5.repo  = "cps";
  inputs.src-cps-0_0_5.type  = "github";
  
  inputs."sorta".owner = "nim-nix-pkgs";
  inputs."sorta".ref   = "master";
  inputs."sorta".repo  = "sorta";
  inputs."sorta".dir   = "source";
  inputs."sorta".type  = "github";
  inputs."sorta".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sorta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cps-0_0_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cps-0_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}