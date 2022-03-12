{
  description = ''A high performance Nim implementation of BitVector with base SomeUnsignedInt(i.e: uint8-64) with support for slices, and seq supported operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-BitVector-master.flake = false;
  inputs.src-BitVector-master.owner = "MarcAzar";
  inputs.src-BitVector-master.ref   = "refs/heads/master";
  inputs.src-BitVector-master.repo  = "BitVector";
  inputs.src-BitVector-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-BitVector-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-BitVector-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}