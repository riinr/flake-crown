{
  description = ''Tool/Lib to highlight text in CLI by using regular expressions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-highlight-master.flake = false;
  inputs.src-highlight-master.ref   = "refs/heads/master";
  inputs.src-highlight-master.owner = "RaimundHuebel";
  inputs.src-highlight-master.repo  = "nimhighlight";
  inputs.src-highlight-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-highlight-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-highlight-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}