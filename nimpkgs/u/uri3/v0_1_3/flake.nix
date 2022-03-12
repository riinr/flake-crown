{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uri3-v0_1_3.flake = false;
  inputs.src-uri3-v0_1_3.owner = "zendbit";
  inputs.src-uri3-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-uri3-v0_1_3.repo  = "nim.uri3";
  inputs.src-uri3-v0_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uri3-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uri3-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}