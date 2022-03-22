{
  description = ''API wrapper for the game spacetraders (https://spacetraders.io)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spacenimtraders-master.flake = false;
  inputs.src-spacenimtraders-master.ref   = "refs/heads/master";
  inputs.src-spacenimtraders-master.owner = "ire4ever1190";
  inputs.src-spacenimtraders-master.repo  = "SpaceNimTraders";
  inputs.src-spacenimtraders-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spacenimtraders-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spacenimtraders-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}