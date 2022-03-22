{
  description = ''libipset wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libipset-master.flake = false;
  inputs.src-libipset-master.ref   = "refs/heads/master";
  inputs.src-libipset-master.owner = "ba0f3";
  inputs.src-libipset-master.repo  = "libipset.nim";
  inputs.src-libipset-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libipset-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libipset-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}