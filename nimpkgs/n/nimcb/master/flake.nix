{
  description = ''Integrate nim projects in the C++Builder build process'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcb-master.flake = false;
  inputs.src-nimcb-master.owner = "AdrianV";
  inputs.src-nimcb-master.ref   = "master";
  inputs.src-nimcb-master.repo  = "nimcb";
  inputs.src-nimcb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}