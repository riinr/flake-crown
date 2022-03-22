{
  description = ''USIG Argentina Government MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-usigar-master.flake = false;
  inputs.src-usigar-master.ref   = "refs/heads/master";
  inputs.src-usigar-master.owner = "juancarlospaco";
  inputs.src-usigar-master.repo  = "nim-usigar";
  inputs.src-usigar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-usigar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-usigar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}