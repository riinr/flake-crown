{
  description = ''Everything you want to do with colors.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chroma-master.flake = false;
  inputs.src-chroma-master.owner = "treeform";
  inputs.src-chroma-master.ref   = "refs/heads/master";
  inputs.src-chroma-master.repo  = "chroma";
  inputs.src-chroma-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chroma-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chroma-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}