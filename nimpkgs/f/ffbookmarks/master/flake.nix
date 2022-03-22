{
  description = ''Nim module for working with Firefox bookmarks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ffbookmarks-master.flake = false;
  inputs.src-ffbookmarks-master.ref   = "refs/heads/master";
  inputs.src-ffbookmarks-master.owner = "achesak";
  inputs.src-ffbookmarks-master.repo  = "nim-ffbookmarks";
  inputs.src-ffbookmarks-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ffbookmarks-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ffbookmarks-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}