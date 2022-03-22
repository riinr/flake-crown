{
  description = ''A loose direct to object json parser with hooks.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jsony-1_0_3.flake = false;
  inputs.src-jsony-1_0_3.owner = "treeform";
  inputs.src-jsony-1_0_3.ref   = "1_0_3";
  inputs.src-jsony-1_0_3.repo  = "jsony";
  inputs.src-jsony-1_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jsony-1_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jsony-1_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}