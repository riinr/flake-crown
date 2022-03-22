{
  description = ''Bindings for picohttpparser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-picohttpparser-0_9_0.flake = false;
  inputs.src-picohttpparser-0_9_0.ref   = "refs/tags/0.9.0";
  inputs.src-picohttpparser-0_9_0.owner = "philip-wernersbach";
  inputs.src-picohttpparser-0_9_0.repo  = "nim-picohttpparser";
  inputs.src-picohttpparser-0_9_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-picohttpparser-0_9_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-picohttpparser-0_9_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}