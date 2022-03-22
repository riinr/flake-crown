{
  description = ''Fast Light Toolkit.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fltk-master.flake = false;
  inputs.src-fltk-master.ref   = "refs/heads/master";
  inputs.src-fltk-master.owner = "Skrylar";
  inputs.src-fltk-master.repo  = "nfltk";
  inputs.src-fltk-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fltk-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fltk-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}