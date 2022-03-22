{
  description = ''Tool/Lib to highlight text in CLI by using regular expressions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-highlight-v0_1_0.flake = false;
  inputs.src-highlight-v0_1_0.owner = "RaimundHuebel";
  inputs.src-highlight-v0_1_0.ref   = "v0_1_0";
  inputs.src-highlight-v0_1_0.repo  = "nimhighlight";
  inputs.src-highlight-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-highlight-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-highlight-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}