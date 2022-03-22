{
  description = ''This is extension for uri (For handling uri) module and forked from uri2 with some bug fix.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uri3-v0_1_1.flake = false;
  inputs.src-uri3-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-uri3-v0_1_1.owner = "zendbit";
  inputs.src-uri3-v0_1_1.repo  = "nim.uri3";
  inputs.src-uri3-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uri3-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uri3-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}