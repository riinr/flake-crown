{
  description = ''Go-like interfaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-interfaced-master.flake = false;
  inputs.src-interfaced-master.ref   = "refs/heads/master";
  inputs.src-interfaced-master.owner = "andreaferretti";
  inputs.src-interfaced-master.repo  = "interfaced";
  inputs.src-interfaced-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-interfaced-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-interfaced-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}