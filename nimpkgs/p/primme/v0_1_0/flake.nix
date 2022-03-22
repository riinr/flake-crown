{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-primme-v0_1_0.flake = false;
  inputs.src-primme-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-primme-v0_1_0.owner = "jxy";
  inputs.src-primme-v0_1_0.repo  = "primme";
  inputs.src-primme-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-primme-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-primme-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}