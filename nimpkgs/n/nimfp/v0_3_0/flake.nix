{
  description = ''Nim functional programming library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfp-v0_3_0.flake = false;
  inputs.src-nimfp-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-nimfp-v0_3_0.owner = "vegansk";
  inputs.src-nimfp-v0_3_0.repo  = "nimfp";
  inputs.src-nimfp-v0_3_0.type  = "github";
  
  inputs."nimboost".owner = "nim-nix-pkgs";
  inputs."nimboost".ref   = "master";
  inputs."nimboost".repo  = "nimboost";
  inputs."nimboost".dir   = "v0_5_5";
  inputs."nimboost".type  = "github";
  inputs."nimboost".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy".owner = "nim-nix-pkgs";
  inputs."classy".ref   = "master";
  inputs."classy".repo  = "classy";
  inputs."classy".dir   = "v0_0_4";
  inputs."classy".type  = "github";
  inputs."classy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimfp-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}