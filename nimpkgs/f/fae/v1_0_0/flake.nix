{
  description = ''Find and Edit Utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fae-v1_0_0.flake = false;
  inputs.src-fae-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-fae-v1_0_0.owner = "h3rald";
  inputs.src-fae-v1_0_0.repo  = "fae";
  inputs.src-fae-v1_0_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fae-v1_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fae-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}