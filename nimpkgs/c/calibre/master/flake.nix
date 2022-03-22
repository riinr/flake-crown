{
  description = ''Calibre Database Lib for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-calibre-master.flake = false;
  inputs.src-calibre-master.ref   = "refs/heads/master";
  inputs.src-calibre-master.owner = "juancarlospaco";
  inputs.src-calibre-master.repo  = "nim-calibre";
  inputs.src-calibre-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-calibre-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-calibre-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}