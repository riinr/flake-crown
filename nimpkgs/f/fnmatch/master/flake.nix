{
  description = ''Nim module for filename matching with UNIX shell patterns'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fnmatch-master.flake = false;
  inputs.src-fnmatch-master.owner = "achesak";
  inputs.src-fnmatch-master.ref   = "refs/heads/master";
  inputs.src-fnmatch-master.repo  = "nim-fnmatch";
  inputs.src-fnmatch-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fnmatch-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fnmatch-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}