{
  description = ''Various networking utils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-networkutils-v0_5.flake = false;
  inputs.src-networkutils-v0_5.ref   = "refs/tags/v0.5";
  inputs.src-networkutils-v0_5.owner = "Q-Master";
  inputs.src-networkutils-v0_5.repo  = "networkutils.nim";
  inputs.src-networkutils-v0_5.type  = "github";
  
  inputs."ptr_math".owner = "nim-nix-pkgs";
  inputs."ptr_math".ref   = "master";
  inputs."ptr_math".repo  = "ptr_math";
  inputs."ptr_math".dir   = "v0_3_0";
  inputs."ptr_math".type  = "github";
  inputs."ptr_math".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-networkutils-v0_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-networkutils-v0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}