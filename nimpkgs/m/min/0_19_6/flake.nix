{
  description = ''A tiny concatenative programming language and shell.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-min-0_19_6.flake = false;
  inputs.src-min-0_19_6.ref   = "refs/tags/0.19.6";
  inputs.src-min-0_19_6.owner = "h3rald";
  inputs.src-min-0_19_6.repo  = "min";
  inputs.src-min-0_19_6.type  = "github";
  
  inputs."nifty".owner = "nim-nix-pkgs";
  inputs."nifty".ref   = "master";
  inputs."nifty".repo  = "nifty";
  inputs."nifty".dir   = "v1_2_2";
  inputs."nifty".type  = "github";
  inputs."nifty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-min-0_19_6"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-min-0_19_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}