{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_3_28.flake = false;
  inputs.src-hmisc-v0_3_28.ref   = "refs/tags/v0.3.28";
  inputs.src-hmisc-v0_3_28.owner = "haxscramper";
  inputs.src-hmisc-v0_3_28.repo  = "hmisc";
  inputs.src-hmisc-v0_3_28.type  = "github";
  
  inputs."with".owner = "nim-nix-pkgs";
  inputs."with".ref   = "master";
  inputs."with".repo  = "with";
  inputs."with".dir   = "0_4_0";
  inputs."with".type  = "github";
  inputs."with".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell".owner = "nim-nix-pkgs";
  inputs."shell".ref   = "master";
  inputs."shell".repo  = "shell";
  inputs."shell".dir   = "v0_4_4";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_3_28"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_3_28";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}