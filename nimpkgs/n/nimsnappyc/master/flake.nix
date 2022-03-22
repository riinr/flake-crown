{
  description = ''Snappy-C lib wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsnappyc-master.flake = false;
  inputs.src-nimsnappyc-master.owner = "NimCompression";
  inputs.src-nimsnappyc-master.ref   = "master";
  inputs.src-nimsnappyc-master.repo  = "nimsnappyc";
  inputs.src-nimsnappyc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsnappyc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsnappyc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}