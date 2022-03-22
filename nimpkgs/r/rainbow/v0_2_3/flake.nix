{
  description = ''256 colors for shell'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rainbow-v0_2_3.flake = false;
  inputs.src-rainbow-v0_2_3.owner = "Willyboar";
  inputs.src-rainbow-v0_2_3.ref   = "v0_2_3";
  inputs.src-rainbow-v0_2_3.repo  = "rainbow";
  inputs.src-rainbow-v0_2_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rainbow-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rainbow-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}