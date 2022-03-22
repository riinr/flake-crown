{
  description = ''A command lined based text editor inspired by vi/vim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-v0_0_1.flake = false;
  inputs.src-moe-v0_0_1.ref   = "refs/tags/v0.0.1";
  inputs.src-moe-v0_0_1.owner = "fox0430";
  inputs.src-moe-v0_0_1.repo  = "moe";
  inputs.src-moe-v0_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moe-v0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}