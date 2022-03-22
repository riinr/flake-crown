{
  description = ''A library for rendering text with paranim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paratext-0_11_0.flake = false;
  inputs.src-paratext-0_11_0.ref   = "refs/tags/0.11.0";
  inputs.src-paratext-0_11_0.owner = "paranim";
  inputs.src-paratext-0_11_0.repo  = "paratext";
  inputs.src-paratext-0_11_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paratext-0_11_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paratext-0_11_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}