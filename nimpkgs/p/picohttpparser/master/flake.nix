{
  description = ''Bindings for picohttpparser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-picohttpparser-master.flake = false;
  inputs.src-picohttpparser-master.owner = "philip-wernersbach";
  inputs.src-picohttpparser-master.ref   = "refs/heads/master";
  inputs.src-picohttpparser-master.repo  = "nim-picohttpparser";
  inputs.src-picohttpparser-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-picohttpparser-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-picohttpparser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}