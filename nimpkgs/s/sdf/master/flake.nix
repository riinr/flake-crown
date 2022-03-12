{
  description = ''Signed Distance Field builder for contour texturing in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-SDF-master.flake = false;
  inputs.src-SDF-master.owner = "Halsys";
  inputs.src-SDF-master.ref   = "refs/heads/master";
  inputs.src-SDF-master.repo  = "SDF.nim";
  inputs.src-SDF-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-SDF-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-SDF-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}