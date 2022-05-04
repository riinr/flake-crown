{
  description = ''Nintendo Switch library libnx for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libnx-0_1_8.flake = false;
  inputs.src-libnx-0_1_8.ref   = "refs/tags/0.1.8";
  inputs.src-libnx-0_1_8.owner = "jyapayne";
  inputs.src-libnx-0_1_8.repo  = "nim-libnx";
  inputs.src-libnx-0_1_8.type  = "github";
  
  inputs."nimgen".owner = "nim-nix-pkgs";
  inputs."nimgen".ref   = "master";
  inputs."nimgen".repo  = "nimgen";
  inputs."nimgen".dir   = "v0_5_1";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."switch-build".owner = "nim-nix-pkgs";
  inputs."switch-build".ref   = "master";
  inputs."switch-build".repo  = "switch-build";
  inputs."switch-build".dir   = "";
  inputs."switch-build".type  = "github";
  inputs."switch-build".inputs.nixpkgs.follows = "nixpkgs";
  inputs."switch-build".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-0_1_8"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libnx-0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}