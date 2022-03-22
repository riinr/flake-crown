{
  description = ''Mustache in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mustache-v0_2_2.flake = false;
  inputs.src-mustache-v0_2_2.owner = "soasme";
  inputs.src-mustache-v0_2_2.ref   = "v0_2_2";
  inputs.src-mustache-v0_2_2.repo  = "nim-mustache";
  inputs.src-mustache-v0_2_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mustache-v0_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mustache-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}