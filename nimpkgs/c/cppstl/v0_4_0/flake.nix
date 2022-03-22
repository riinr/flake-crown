{
  description = ''Bindings for the C++ Standard Template Library (STL)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cppstl-v0_4_0.flake = false;
  inputs.src-cppstl-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-cppstl-v0_4_0.owner = "BigEpsilon";
  inputs.src-cppstl-v0_4_0.repo  = "nim-cppstl";
  inputs.src-cppstl-v0_4_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cppstl-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cppstl-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}