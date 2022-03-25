{
  description = ''Nintendo Switch library libnx for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libnx-master.flake = false;
  inputs.src-libnx-master.ref   = "refs/heads/master";
  inputs.src-libnx-master.owner = "jyapayne";
  inputs.src-libnx-master.repo  = "nim-libnx";
  inputs.src-libnx-master.type  = "github";
  
  inputs."nimgen".owner = "nim-nix-pkgs";
  inputs."nimgen".ref   = "master";
  inputs."nimgen".repo  = "nimgen";
  inputs."nimgen".dir   = "v0_5_1";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."switch_build".owner = "nim-nix-pkgs";
  inputs."switch_build".ref   = "master";
  inputs."switch_build".repo  = "switch_build";
  inputs."switch_build".dir   = "0_1_2";
  inputs."switch_build".type  = "github";
  inputs."switch_build".inputs.nixpkgs.follows = "nixpkgs";
  inputs."switch_build".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libnx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}