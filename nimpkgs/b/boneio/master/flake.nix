{
  description = ''Beagle bone black GPIO implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-boneIO-master.flake = false;
  inputs.src-boneIO-master.ref   = "refs/heads/master";
  inputs.src-boneIO-master.owner = "xyz32";
  inputs.src-boneIO-master.repo  = "boneIO";
  inputs.src-boneIO-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-boneIO-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-boneIO-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}