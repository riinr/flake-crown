{
  description = ''AWS SDK for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aws_sdk-master.flake = false;
  inputs.src-aws_sdk-master.ref   = "refs/heads/master";
  inputs.src-aws_sdk-master.owner = "aidansteele";
  inputs.src-aws_sdk-master.repo  = "aws_sdk.nim";
  inputs.src-aws_sdk-master.type  = "github";
  
  inputs."stringinterpolation".owner = "nim-nix-pkgs";
  inputs."stringinterpolation".ref   = "master";
  inputs."stringinterpolation".repo  = "stringinterpolation";
  inputs."stringinterpolation".dir   = "master";
  inputs."stringinterpolation".type  = "github";
  inputs."stringinterpolation".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stringinterpolation".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sph".owner = "nim-nix-pkgs";
  inputs."sph".ref   = "master";
  inputs."sph".repo  = "sph";
  inputs."sph".dir   = "master";
  inputs."sph".type  = "github";
  inputs."sph".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sph".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aws_sdk-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-aws_sdk-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}