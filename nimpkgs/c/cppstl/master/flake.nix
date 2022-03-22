{
  description = ''Bindings for the C++ Standard Template Library (STL)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cppstl-master.flake = false;
  inputs.src-cppstl-master.ref   = "refs/heads/master";
  inputs.src-cppstl-master.owner = "BigEpsilon";
  inputs.src-cppstl-master.repo  = "nim-cppstl";
  inputs.src-cppstl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cppstl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cppstl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}