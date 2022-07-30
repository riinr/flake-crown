{
  description = ''High-level nim wrapper for C/C++ parsing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hcparse-devel.flake = false;
  inputs.src-hcparse-devel.ref   = "refs/heads/devel";
  inputs.src-hcparse-devel.owner = "haxscramper";
  inputs.src-hcparse-devel.repo  = "hcparse";
  inputs.src-hcparse-devel.type  = "github";
  
  inputs."hnimast".owner = "nim-nix-pkgs";
  inputs."hnimast".ref   = "master";
  inputs."hnimast".repo  = "hnimast";
  inputs."hnimast".dir   = "v0_4_2";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".dir   = "v0_14_6";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint".owner = "nim-nix-pkgs";
  inputs."hpprint".ref   = "master";
  inputs."hpprint".repo  = "hpprint";
  inputs."hpprint".dir   = "v0_2_18";
  inputs."hpprint".type  = "github";
  inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits".owner = "nim-nix-pkgs";
  inputs."nimtraits".ref   = "master";
  inputs."nimtraits".repo  = "nimtraits";
  inputs."nimtraits".dir   = "v0_1_5";
  inputs."nimtraits".type  = "github";
  inputs."nimtraits".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hcparse-devel"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hcparse-devel";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}