{
  description = ''Nim module for better URI handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uri2-master.flake = false;
  inputs.src-uri2-master.owner = "achesak";
  inputs.src-uri2-master.ref   = "refs/heads/master";
  inputs.src-uri2-master.repo  = "nim-uri2";
  inputs.src-uri2-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uri2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uri2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}