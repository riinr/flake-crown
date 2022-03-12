{
  description = ''Unsplash API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unsplash-master.flake = false;
  inputs.src-unsplash-master.owner = "juancarlospaco";
  inputs.src-unsplash-master.ref   = "refs/heads/master";
  inputs.src-unsplash-master.repo  = "nim-unsplash";
  inputs.src-unsplash-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unsplash-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unsplash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}