{
  description = ''A Funge-98 interpreter written in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfunge98-1_1_0.flake = false;
  inputs.src-nimfunge98-1_1_0.owner = "adyxax";
  inputs.src-nimfunge98-1_1_0.ref   = "refs/tags/1.1.0";
  inputs.src-nimfunge98-1_1_0.repo  = "nimfunge98";
  inputs.src-nimfunge98-1_1_0.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfunge98-1_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimfunge98-1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}