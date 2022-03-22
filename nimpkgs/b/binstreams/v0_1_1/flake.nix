{
  description = ''Endianness aware stream I/O for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-binstreams-v0_1_1.flake = false;
  inputs.src-binstreams-v0_1_1.owner = "johnnovak";
  inputs.src-binstreams-v0_1_1.ref   = "v0_1_1";
  inputs.src-binstreams-v0_1_1.repo  = "nim-binstreams";
  inputs.src-binstreams-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-binstreams-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-binstreams-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}