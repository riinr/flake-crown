{
  description = ''Consistent Overhead Byte Stuffing for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cobs-master.flake = false;
  inputs.src-cobs-master.ref   = "refs/heads/master";
  inputs.src-cobs-master.owner = "keyme";
  inputs.src-cobs-master.repo  = "nim_cobs";
  inputs.src-cobs-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cobs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cobs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}