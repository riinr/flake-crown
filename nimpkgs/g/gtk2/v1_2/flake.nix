{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gtk2-v1_2.flake = false;
  inputs.src-gtk2-v1_2.ref   = "refs/tags/v1.2";
  inputs.src-gtk2-v1_2.owner = "nim-lang";
  inputs.src-gtk2-v1_2.repo  = "gtk2";
  inputs.src-gtk2-v1_2.type  = "github";
  
  inputs."cairo".owner = "nim-nix-pkgs";
  inputs."cairo".ref   = "master";
  inputs."cairo".repo  = "cairo";
  inputs."cairo".dir   = "1_1_1";
  inputs."cairo".type  = "github";
  inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gtk2-v1_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gtk2-v1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}