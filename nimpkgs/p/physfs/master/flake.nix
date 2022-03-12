{
  description = ''A library to provide abstract access to various archives.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-physfs-master.flake = false;
  inputs.src-physfs-master.owner = "fowlmouth";
  inputs.src-physfs-master.ref   = "refs/heads/master";
  inputs.src-physfs-master.repo  = "physfs";
  inputs.src-physfs-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-physfs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-physfs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}