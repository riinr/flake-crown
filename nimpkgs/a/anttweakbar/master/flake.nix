{
  description = ''nim wrapper around the AntTweakBar c library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-AntTweakBar-master.flake = false;
  inputs.src-AntTweakBar-master.owner = "krux02";
  inputs.src-AntTweakBar-master.ref   = "refs/heads/master";
  inputs.src-AntTweakBar-master.repo  = "nimAntTweakBar";
  inputs.src-AntTweakBar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-AntTweakBar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-AntTweakBar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}