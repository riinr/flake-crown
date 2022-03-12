{
  description = ''Protobuf implementation in pure Nim that leverages the power of the macro system to not depend on any external tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-protobuf-v0_5_1.flake = false;
  inputs.src-protobuf-v0_5_1.owner = "PMunch";
  inputs.src-protobuf-v0_5_1.ref   = "refs/tags/v0.5.1";
  inputs.src-protobuf-v0_5_1.repo  = "protobuf-nim";
  inputs.src-protobuf-v0_5_1.type  = "github";
  
  inputs."combparser".dir   = "nimpkgs/c/combparser";
  inputs."combparser".owner = "riinr";
  inputs."combparser".ref   = "flake-pinning";
  inputs."combparser".repo  = "flake-nimble";
  inputs."combparser".type  = "github";
  inputs."combparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-protobuf-v0_5_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-protobuf-v0_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}