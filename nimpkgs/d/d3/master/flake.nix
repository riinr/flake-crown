{
  description = ''A D3.js wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-d3-master.flake = false;
  inputs.src-d3-master.owner = "hiteshjasani";
  inputs.src-d3-master.ref   = "refs/heads/master";
  inputs.src-d3-master.repo  = "nim-d3";
  inputs.src-d3-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-d3-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-d3-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}