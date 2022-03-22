{
  description = ''Nim functional programming library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfp-master.flake = false;
  inputs.src-nimfp-master.owner = "vegansk";
  inputs.src-nimfp-master.ref   = "master";
  inputs.src-nimfp-master.repo  = "nimfp";
  inputs.src-nimfp-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimfp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}