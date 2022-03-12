{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cbor-v0_5_2.flake = false;
  inputs.src-cbor-v0_5_2.owner = "~ehmry";
  inputs.src-cbor-v0_5_2.ref   = "refs/tags/v0.5.2";
  inputs.src-cbor-v0_5_2.repo  = "nim_cbor";
  inputs.src-cbor-v0_5_2.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-v0_5_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cbor-v0_5_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}