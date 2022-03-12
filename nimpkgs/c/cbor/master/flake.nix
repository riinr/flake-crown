{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cbor-master.flake = false;
  inputs.src-cbor-master.owner = "~ehmry";
  inputs.src-cbor-master.ref   = "refs/heads/master";
  inputs.src-cbor-master.repo  = "nim_cbor";
  inputs.src-cbor-master.type  = "other";
  
  inputs."bigints".dir   = "nimpkgs/b/bigints";
  inputs."bigints".owner = "riinr";
  inputs."bigints".ref   = "flake-pinning";
  inputs."bigints".repo  = "flake-nimble";
  inputs."bigints".type  = "github";
  inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cbor-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}