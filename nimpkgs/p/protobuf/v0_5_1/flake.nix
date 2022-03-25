{
  description = ''Pure Nim library for using protobuf in Nim. It is implemented through a string parsing macro that generate code based on the official protobuf specification.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-protobuf-v0_5_1.flake = false;
  inputs.src-protobuf-v0_5_1.ref   = "refs/tags/v0.5.1";
  inputs.src-protobuf-v0_5_1.owner = "PMunch";
  inputs.src-protobuf-v0_5_1.repo  = "protobuf-nim";
  inputs.src-protobuf-v0_5_1.type  = "github";
  
  inputs."combparser".owner = "nim-nix-pkgs";
  inputs."combparser".ref   = "master";
  inputs."combparser".repo  = "combparser";
  inputs."combparser".dir   = "master";
  inputs."combparser".type  = "github";
  inputs."combparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-protobuf-v0_5_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-protobuf-v0_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}