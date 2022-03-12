{
  description = ''Canonical JSON according to RFC8785'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-canonicaljson-master.flake = false;
  inputs.src-canonicaljson-master.owner = "jackhftang";
  inputs.src-canonicaljson-master.ref   = "refs/heads/master";
  inputs.src-canonicaljson-master.repo  = "canonicaljson.nim";
  inputs.src-canonicaljson-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-canonicaljson-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-canonicaljson-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}