{
  description = ''Very simple browser Javascript TTY web terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webterminal-master.flake = false;
  inputs.src-webterminal-master.owner = "JohnAD";
  inputs.src-webterminal-master.ref   = "refs/heads/master";
  inputs.src-webterminal-master.repo  = "webterminal";
  inputs.src-webterminal-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webterminal-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webterminal-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}