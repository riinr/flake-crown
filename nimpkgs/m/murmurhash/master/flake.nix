{
  description = ''Pure nim implementation of MurmurHash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-murmurhash-master.flake = false;
  inputs.src-murmurhash-master.owner = "cwpearson";
  inputs.src-murmurhash-master.ref   = "refs/heads/master";
  inputs.src-murmurhash-master.repo  = "nim-murmurhash";
  inputs.src-murmurhash-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-murmurhash-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-murmurhash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}