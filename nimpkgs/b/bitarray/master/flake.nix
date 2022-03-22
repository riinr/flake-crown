{
  description = ''Efficient in-memory or mmap-backed bitarray implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bitarray-master.flake = false;
  inputs.src-bitarray-master.owner = "onecodex";
  inputs.src-bitarray-master.ref   = "master";
  inputs.src-bitarray-master.repo  = "nim-bitarray";
  inputs.src-bitarray-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bitarray-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bitarray-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}