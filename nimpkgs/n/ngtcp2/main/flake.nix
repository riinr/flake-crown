{
  description = ''Nim wrapper around the ngtcp2 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ngtcp2-main.flake = false;
  inputs.src-ngtcp2-main.owner = "status-im";
  inputs.src-ngtcp2-main.ref   = "main";
  inputs.src-ngtcp2-main.repo  = "nim-ngtcp2";
  inputs.src-ngtcp2-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ngtcp2-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ngtcp2-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}