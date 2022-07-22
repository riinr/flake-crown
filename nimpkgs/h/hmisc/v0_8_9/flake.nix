{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_8_9.flake = false;
  inputs.src-hmisc-v0_8_9.ref   = "refs/tags/v0.8.9";
  inputs.src-hmisc-v0_8_9.owner = "haxscramper";
  inputs.src-hmisc-v0_8_9.repo  = "hmisc";
  inputs.src-hmisc-v0_8_9.type  = "github";
  
  inputs."sorta".owner = "nim-nix-pkgs";
  inputs."sorta".ref   = "master";
  inputs."sorta".repo  = "sorta";
  inputs."sorta".dir   = "master";
  inputs."sorta".type  = "github";
  inputs."sorta".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sorta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_25";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_8_9"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_8_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}