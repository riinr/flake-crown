{
  description = ''Tiny library to check if a system package is already installed.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-checkpack-0_2_0.flake = false;
  inputs.src-checkpack-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-checkpack-0_2_0.owner = "EchoPouet";
  inputs.src-checkpack-0_2_0.repo  = "checkpack";
  inputs.src-checkpack-0_2_0.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-checkpack-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-checkpack-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}