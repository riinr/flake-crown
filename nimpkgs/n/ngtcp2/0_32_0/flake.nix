{
  description = ''Nim wrapper around the ngtcp2 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ngtcp2-0_32_0.flake = false;
  inputs.src-ngtcp2-0_32_0.ref   = "refs/tags/0.32.0";
  inputs.src-ngtcp2-0_32_0.owner = "status-im";
  inputs.src-ngtcp2-0_32_0.repo  = "nim-ngtcp2";
  inputs.src-ngtcp2-0_32_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ngtcp2-0_32_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ngtcp2-0_32_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}