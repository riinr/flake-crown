{
  description = ''Library for querying HTML using CSS-selectors (like JavaScripts document.querySelector)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimquery-v1_2_0.flake = false;
  inputs.src-nimquery-v1_2_0.ref   = "refs/tags/v1.2.0";
  inputs.src-nimquery-v1_2_0.owner = "GULPF";
  inputs.src-nimquery-v1_2_0.repo  = "nimquery";
  inputs.src-nimquery-v1_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimquery-v1_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimquery-v1_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}