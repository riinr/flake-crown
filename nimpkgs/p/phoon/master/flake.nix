{
  description = ''A web framework inspired by ExpressJS 🐇⚡'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-phoon-master.flake = false;
  inputs.src-phoon-master.owner = "ducdetronquito";
  inputs.src-phoon-master.ref   = "refs/heads/master";
  inputs.src-phoon-master.repo  = "phoon";
  inputs.src-phoon-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-phoon-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-phoon-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}