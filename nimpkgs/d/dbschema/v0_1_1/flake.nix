{
  description = ''Database scheme migration library for Nim language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dbschema-v0_1_1.flake = false;
  inputs.src-dbschema-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-dbschema-v0_1_1.owner = "vegansk";
  inputs.src-dbschema-v0_1_1.repo  = "dbschema";
  inputs.src-dbschema-v0_1_1.type  = "github";
  
  inputs."nimboost".owner = "nim-nix-pkgs";
  inputs."nimboost".ref   = "master";
  inputs."nimboost".repo  = "nimboost";
  inputs."nimboost".dir   = "v0_5_5";
  inputs."nimboost".type  = "github";
  inputs."nimboost".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp".owner = "nim-nix-pkgs";
  inputs."nimfp".ref   = "master";
  inputs."nimfp".repo  = "nimfp";
  inputs."nimfp".dir   = "v0_4_4";
  inputs."nimfp".type  = "github";
  inputs."nimfp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dbschema-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-dbschema-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}