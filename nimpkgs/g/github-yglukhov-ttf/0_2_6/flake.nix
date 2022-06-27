{
  description = ''TTF library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ttf-0_2_6.flake = false;
  inputs.src-ttf-0_2_6.ref   = "refs/tags/0.2.6";
  inputs.src-ttf-0_2_6.owner = "yglukhov";
  inputs.src-ttf-0_2_6.repo  = "ttf";
  inputs.src-ttf-0_2_6.type  = "github";
  
  inputs."nimbmp".owner = "nim-nix-pkgs";
  inputs."nimbmp".ref   = "master";
  inputs."nimbmp".repo  = "nimbmp";
  inputs."nimbmp".dir   = "v0_1_8";
  inputs."nimbmp".type  = "github";
  inputs."nimbmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ttf-0_2_6"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ttf-0_2_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}