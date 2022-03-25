{
  description = ''iterate faster. functional style, lazy like, extensible iterator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-iterrr-0_3_0.flake = false;
  inputs.src-iterrr-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-iterrr-0_3_0.owner = "hamidb80";
  inputs.src-iterrr-0_3_0.repo  = "iterrr";
  inputs.src-iterrr-0_3_0.type  = "github";
  
  inputs."macroplus".owner = "nim-nix-pkgs";
  inputs."macroplus".ref   = "master";
  inputs."macroplus".repo  = "macroplus";
  inputs."macroplus".dir   = "0_2_0";
  inputs."macroplus".type  = "github";
  inputs."macroplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-iterrr-0_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-iterrr-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}