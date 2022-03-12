{
  description = ''A nim flavor of pytorch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-torch-v0_1_24.flake = false;
  inputs.src-torch-v0_1_24.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_24.ref   = "refs/tags/v0.1.24";
  inputs.src-torch-v0_1_24.repo  = "nimtorch";
  inputs.src-torch-v0_1_24.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_1_24"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-torch-v0_1_24";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}