{
  description = ''Wrapper for the assimp library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-assimp-master.flake = false;
  inputs.src-assimp-master.owner = "barcharcraz";
  inputs.src-assimp-master.ref   = "refs/heads/master";
  inputs.src-assimp-master.repo  = "nim-assimp";
  inputs.src-assimp-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-assimp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-assimp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}