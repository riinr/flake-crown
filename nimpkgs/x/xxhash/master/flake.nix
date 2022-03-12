{
  description = ''xxhash wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xxhash-master.flake = false;
  inputs.src-xxhash-master.owner = "OpenSystemsLab";
  inputs.src-xxhash-master.ref   = "refs/heads/master";
  inputs.src-xxhash-master.repo  = "xxhash.nim";
  inputs.src-xxhash-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xxhash-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xxhash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}