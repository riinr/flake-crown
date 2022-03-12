{
  description = ''Nim wrapper for the FMOD Low Level C API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fmod-master.flake = false;
  inputs.src-fmod-master.owner = "johnnovak";
  inputs.src-fmod-master.ref   = "refs/heads/master";
  inputs.src-fmod-master.repo  = "nim-fmod";
  inputs.src-fmod-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fmod-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fmod-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}