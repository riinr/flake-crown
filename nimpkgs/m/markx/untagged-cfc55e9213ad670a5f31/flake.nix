{
  description = ''markx selects execution targets with editor and executes commands.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-markx-untagged-cfc55e9213ad670a5f31.flake = false;
  inputs.src-markx-untagged-cfc55e9213ad670a5f31.ref   = "refs/tags/untagged-cfc55e9213ad670a5f31";
  inputs.src-markx-untagged-cfc55e9213ad670a5f31.owner = "jiro4989";
  inputs.src-markx-untagged-cfc55e9213ad670a5f31.repo  = "markx";
  inputs.src-markx-untagged-cfc55e9213ad670a5f31.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_27";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-markx-untagged-cfc55e9213ad670a5f31"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-markx-untagged-cfc55e9213ad670a5f31";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}