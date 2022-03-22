{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-csfml-v2_2_0.flake = false;
  inputs.src-csfml-v2_2_0.ref   = "refs/tags/v2.2.0";
  inputs.src-csfml-v2_2_0.owner = "oprypin";
  inputs.src-csfml-v2_2_0.repo  = "nim-csfml";
  inputs.src-csfml-v2_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-csfml-v2_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-csfml-v2_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}