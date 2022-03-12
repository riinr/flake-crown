{
  description = ''A wrapper for the libsass library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sass-master.flake = false;
  inputs.src-sass-master.owner = "dom96";
  inputs.src-sass-master.ref   = "refs/heads/master";
  inputs.src-sass-master.repo  = "sass";
  inputs.src-sass-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sass-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sass-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}