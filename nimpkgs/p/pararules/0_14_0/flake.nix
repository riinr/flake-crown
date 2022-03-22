{
  description = ''A rules engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pararules-0_14_0.flake = false;
  inputs.src-pararules-0_14_0.ref   = "refs/tags/0.14.0";
  inputs.src-pararules-0_14_0.owner = "paranim";
  inputs.src-pararules-0_14_0.repo  = "pararules";
  inputs.src-pararules-0_14_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pararules-0_14_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pararules-0_14_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}