{
  description = ''Arch Linux Pacman Optimizer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chonker-master.flake = false;
  inputs.src-chonker-master.owner = "juancarlospaco";
  inputs.src-chonker-master.ref   = "refs/heads/master";
  inputs.src-chonker-master.repo  = "nim-chonker";
  inputs.src-chonker-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chonker-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chonker-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}