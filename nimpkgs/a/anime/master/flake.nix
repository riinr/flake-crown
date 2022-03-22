{
  description = ''The Nim wrapper for tracemoe.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-anime-master.flake = false;
  inputs.src-anime-master.ref   = "refs/heads/master";
  inputs.src-anime-master.owner = "ethosa";
  inputs.src-anime-master.repo  = "anime";
  inputs.src-anime-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-anime-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-anime-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}