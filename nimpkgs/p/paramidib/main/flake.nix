{
  description = ''paramidi with nimib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paramidib-main.flake = false;
  inputs.src-paramidib-main.ref   = "refs/heads/main";
  inputs.src-paramidib-main.owner = "pietroppeter";
  inputs.src-paramidib-main.repo  = "paramidib";
  inputs.src-paramidib-main.type  = "github";
  
  inputs."paramidi".owner = "nim-nix-pkgs";
  inputs."paramidi".ref   = "master";
  inputs."paramidi".repo  = "paramidi";
  inputs."paramidi".dir   = "0_6_0";
  inputs."paramidi".type  = "github";
  inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi_soundfonts".owner = "nim-nix-pkgs";
  inputs."paramidi_soundfonts".ref   = "master";
  inputs."paramidi_soundfonts".repo  = "paramidi_soundfonts";
  inputs."paramidi_soundfonts".dir   = "0_2_0";
  inputs."paramidi_soundfonts".type  = "github";
  inputs."paramidi_soundfonts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound".owner = "nim-nix-pkgs";
  inputs."parasound".ref   = "master";
  inputs."parasound".repo  = "parasound";
  inputs."parasound".dir   = "1_0_0";
  inputs."parasound".type  = "github";
  inputs."parasound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paramidib-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-paramidib-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}