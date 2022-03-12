{
  description = ''A simple RPN calculator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ad-0_6_3.flake = false;
  inputs.src-ad-0_6_3.owner = "subsetpark";
  inputs.src-ad-0_6_3.ref   = "refs/tags/0.6.3";
  inputs.src-ad-0_6_3.repo  = "ad";
  inputs.src-ad-0_6_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ad-0_6_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ad-0_6_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}