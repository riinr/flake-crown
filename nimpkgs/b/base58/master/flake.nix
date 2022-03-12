{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-base58-master.flake = false;
  inputs.src-base58-master.owner = "~ehmry";
  inputs.src-base58-master.ref   = "refs/heads/master";
  inputs.src-base58-master.repo  = "nim_base58";
  inputs.src-base58-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-base58-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-base58-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}