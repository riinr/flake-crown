{
  description = ''Basic tweening library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tweens-master.flake = false;
  inputs.src-tweens-master.ref   = "refs/heads/master";
  inputs.src-tweens-master.owner = "RainbowAsteroids";
  inputs.src-tweens-master.repo  = "tweens";
  inputs.src-tweens-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tweens-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tweens-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}