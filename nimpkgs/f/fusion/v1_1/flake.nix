{
  description = ''Nim's official stdlib extension'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fusion-v1_1.flake = false;
  inputs.src-fusion-v1_1.owner = "nim-lang";
  inputs.src-fusion-v1_1.ref   = "refs/tags/v1.1";
  inputs.src-fusion-v1_1.repo  = "fusion";
  inputs.src-fusion-v1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fusion-v1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fusion-v1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}