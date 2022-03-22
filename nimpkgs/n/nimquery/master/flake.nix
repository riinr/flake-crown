{
  description = ''Library for querying HTML using CSS-selectors (like JavaScripts document.querySelector)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimquery-master.flake = false;
  inputs.src-nimquery-master.ref   = "refs/heads/master";
  inputs.src-nimquery-master.owner = "GULPF";
  inputs.src-nimquery-master.repo  = "nimquery";
  inputs.src-nimquery-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimquery-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimquery-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}