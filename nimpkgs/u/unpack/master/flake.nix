{
  description = ''Array/Sequence/Object destructuring/unpacking macro'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unpack-master.flake = false;
  inputs.src-unpack-master.ref   = "refs/heads/master";
  inputs.src-unpack-master.owner = "technicallyagd";
  inputs.src-unpack-master.repo  = "unpack";
  inputs.src-unpack-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unpack-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unpack-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}