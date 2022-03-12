{
  description = ''Library for interacting with Amazon Web Services (AWS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aws_sdk-master.flake = false;
  inputs.src-aws_sdk-master.owner = "aidansteele";
  inputs.src-aws_sdk-master.ref   = "refs/heads/master";
  inputs.src-aws_sdk-master.repo  = "aws_sdk.nim";
  inputs.src-aws_sdk-master.type  = "github";
  
  inputs."stringinterpolation".dir   = "nimpkgs/s/stringinterpolation";
  inputs."stringinterpolation".owner = "riinr";
  inputs."stringinterpolation".ref   = "flake-pinning";
  inputs."stringinterpolation".repo  = "flake-nimble";
  inputs."stringinterpolation".type  = "github";
  inputs."stringinterpolation".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stringinterpolation".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sph".dir   = "nimpkgs/s/sph";
  inputs."sph".owner = "riinr";
  inputs."sph".ref   = "flake-pinning";
  inputs."sph".repo  = "flake-nimble";
  inputs."sph".type  = "github";
  inputs."sph".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sph".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aws_sdk-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aws_sdk-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}