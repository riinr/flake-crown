{
  description = ''Nim wrapper for wxWidgets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wxnim-master.flake = false;
  inputs.src-wxnim-master.ref   = "refs/heads/master";
  inputs.src-wxnim-master.owner = "PMunch";
  inputs.src-wxnim-master.repo  = "wxnim";
  inputs.src-wxnim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wxnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wxnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}