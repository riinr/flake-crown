{
  description = ''View the nim package list in your browser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlist-master.flake = false;
  inputs.src-nimlist-master.owner = "flenniken";
  inputs.src-nimlist-master.ref   = "master";
  inputs.src-nimlist-master.repo  = "nimlist";
  inputs.src-nimlist-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlist-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimlist-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}