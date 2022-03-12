{
  description = ''Animated GIF writing library based on jo_gif'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gifwriter-v0_1_0.flake = false;
  inputs.src-gifwriter-v0_1_0.owner = "rxi";
  inputs.src-gifwriter-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-gifwriter-v0_1_0.repo  = "gifwriter";
  inputs.src-gifwriter-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gifwriter-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gifwriter-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}