{
  description = ''Convert strings to any case'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-anycase-master.flake = false;
  inputs.src-anycase-master.ref   = "refs/heads/master";
  inputs.src-anycase-master.owner = "lamartire";
  inputs.src-anycase-master.repo  = "anycase";
  inputs.src-anycase-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-anycase-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-anycase-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}