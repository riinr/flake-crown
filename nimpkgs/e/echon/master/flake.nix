{
  description = ''A small package to create lindenmayer-systems or l-systems.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Echon-master.flake = false;
  inputs.src-Echon-master.owner = "eXodiquas";
  inputs.src-Echon-master.ref   = "master";
  inputs.src-Echon-master.repo  = "Echon";
  inputs.src-Echon-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Echon-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Echon-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}