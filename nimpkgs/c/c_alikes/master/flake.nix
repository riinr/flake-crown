{
  description = ''Operators, commands and functions more c-like, plus a few other utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-c_alikes-master.flake = false;
  inputs.src-c_alikes-master.owner = "ReneSac";
  inputs.src-c_alikes-master.ref   = "refs/heads/master";
  inputs.src-c_alikes-master.repo  = "c_alikes";
  inputs.src-c_alikes-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-c_alikes-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-c_alikes-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}