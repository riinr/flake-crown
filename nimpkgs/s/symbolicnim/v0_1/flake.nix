{
  description = ''A symbolic algebra library written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-symbolicnim-v0_1.flake = false;
  inputs.src-symbolicnim-v0_1.ref   = "refs/tags/v0.1";
  inputs.src-symbolicnim-v0_1.owner = "HugoGranstrom";
  inputs.src-symbolicnim-v0_1.repo  = "symbolicnim";
  inputs.src-symbolicnim-v0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-symbolicnim-v0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-symbolicnim-v0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}