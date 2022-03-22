{
  description = ''wrapper around libplist https://github.com/libimobiledevice/libplist'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libplist-master.flake = false;
  inputs.src-libplist-master.ref   = "refs/heads/master";
  inputs.src-libplist-master.owner = "samdmarshall";
  inputs.src-libplist-master.repo  = "libplist.nim";
  inputs.src-libplist-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libplist-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libplist-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}