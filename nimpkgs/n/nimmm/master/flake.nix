{
  description = ''A terminal file manager written in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimmm-master.flake = false;
  inputs.src-nimmm-master.ref   = "refs/heads/master";
  inputs.src-nimmm-master.owner = "joachimschmidt557";
  inputs.src-nimmm-master.repo  = "nimmm";
  inputs.src-nimmm-master.type  = "github";
  
  inputs."noise".owner = "nim-nix-pkgs";
  inputs."noise".ref   = "master";
  inputs."noise".repo  = "noise";
  inputs."noise".dir   = "v0_1_14";
  inputs."noise".type  = "github";
  inputs."noise".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbox".owner = "nim-nix-pkgs";
  inputs."nimbox".ref   = "master";
  inputs."nimbox".repo  = "nimbox";
  inputs."nimbox".dir   = "master";
  inputs."nimbox".type  = "github";
  inputs."nimbox".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbox".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors".owner = "nim-nix-pkgs";
  inputs."lscolors".ref   = "master";
  inputs."lscolors".repo  = "lscolors";
  inputs."lscolors".dir   = "v0_3_3";
  inputs."lscolors".type  = "github";
  inputs."lscolors".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimmm-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimmm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}