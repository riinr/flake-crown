{
  description = ''Base45 encoder and decoder.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-base45-trunk.flake = false;
  inputs.src-base45-trunk.ref   = "trunk";
  inputs.src-base45-trunk.owner = "~ehmry";
  inputs.src-base45-trunk.repo  = "base45";
  inputs.src-base45-trunk.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-base45-trunk"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-base45-trunk";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}