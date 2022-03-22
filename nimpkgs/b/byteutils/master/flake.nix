{
  description = ''A library to handle raw bytes and hex representations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-byteutils-master.flake = false;
  inputs.src-byteutils-master.ref   = "refs/heads/master";
  inputs.src-byteutils-master.owner = "status-im";
  inputs.src-byteutils-master.repo  = "nim-byteutils";
  inputs.src-byteutils-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-byteutils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-byteutils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}