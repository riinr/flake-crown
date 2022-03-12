{
  description = ''Redis-backed sessions for jester'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redissessions-master.flake = false;
  inputs.src-redissessions-master.owner = "ithkuil";
  inputs.src-redissessions-master.ref   = "refs/heads/master";
  inputs.src-redissessions-master.repo  = "redissessions";
  inputs.src-redissessions-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redissessions-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redissessions-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}