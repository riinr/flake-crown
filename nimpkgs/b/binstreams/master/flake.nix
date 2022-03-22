{
  description = ''Endianness aware stream I/O for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-binstreams-master.flake = false;
  inputs.src-binstreams-master.ref   = "refs/heads/master";
  inputs.src-binstreams-master.owner = "johnnovak";
  inputs.src-binstreams-master.repo  = "nim-binstreams";
  inputs.src-binstreams-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-binstreams-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-binstreams-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}