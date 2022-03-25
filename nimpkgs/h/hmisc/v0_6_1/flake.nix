{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_6_1.flake = false;
  inputs.src-hmisc-v0_6_1.ref   = "refs/tags/v0.6.1";
  inputs.src-hmisc-v0_6_1.owner = "haxscramper";
  inputs.src-hmisc-v0_6_1.repo  = "hmisc";
  inputs.src-hmisc-v0_6_1.type  = "github";
  
  inputs."with".owner = "nim-nix-pkgs";
  inputs."with".ref   = "master";
  inputs."with".repo  = "with";
  inputs."with".dir   = "0_4_0";
  inputs."with".type  = "github";
  inputs."with".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils".owner = "nim-nix-pkgs";
  inputs."macroutils".ref   = "master";
  inputs."macroutils".repo  = "macroutils";
  inputs."macroutils".dir   = "v1_2_0";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_6_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}