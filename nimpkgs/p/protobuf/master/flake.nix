{
  description = ''Protobuf implementation in pure Nim that leverages the power of the macro system to not depend on any external tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-protobuf-master.flake = false;
  inputs.src-protobuf-master.owner = "PMunch";
  inputs.src-protobuf-master.ref   = "refs/heads/master";
  inputs.src-protobuf-master.repo  = "protobuf-nim";
  inputs.src-protobuf-master.type  = "github";
  
  inputs."combparser".owner = "nim-nix-pkgs";
  inputs."combparser".ref   = "master";
  inputs."combparser".repo  = "combparser";
  inputs."combparser".type  = "github";
  inputs."combparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-protobuf-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-protobuf-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}