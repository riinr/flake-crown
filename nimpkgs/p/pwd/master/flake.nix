{
  description = ''Nim port of Python's pwd module for working with the UNIX password file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pwd-master.flake = false;
  inputs.src-pwd-master.owner = "achesak";
  inputs.src-pwd-master.ref   = "refs/heads/master";
  inputs.src-pwd-master.repo  = "nim-pwd";
  inputs.src-pwd-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pwd-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pwd-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}