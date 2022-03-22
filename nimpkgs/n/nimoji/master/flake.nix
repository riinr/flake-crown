{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimoji-master.flake = false;
  inputs.src-nimoji-master.ref   = "refs/heads/master";
  inputs.src-nimoji-master.owner = "pietroppeter";
  inputs.src-nimoji-master.repo  = "nimoji";
  inputs.src-nimoji-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimoji-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimoji-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}