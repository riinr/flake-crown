{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-base58-v0_1_0.flake = false;
  inputs.src-base58-v0_1_0.owner = "~ehmry";
  inputs.src-base58-v0_1_0.ref   = "v0_1_0";
  inputs.src-base58-v0_1_0.repo  = "nim_base58";
  inputs.src-base58-v0_1_0.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-base58-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-base58-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}