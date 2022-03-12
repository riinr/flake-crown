{
  description = ''Simple method of obtaining secure random numbers from the OS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-urand-master.flake = false;
  inputs.src-urand-master.owner = "Matceporial";
  inputs.src-urand-master.ref   = "refs/heads/master";
  inputs.src-urand-master.repo  = "nim-urand";
  inputs.src-urand-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-urand-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-urand-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}