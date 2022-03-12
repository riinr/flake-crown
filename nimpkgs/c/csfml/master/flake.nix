{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-csfml-master.flake = false;
  inputs.src-csfml-master.owner = "oprypin";
  inputs.src-csfml-master.ref   = "refs/heads/master";
  inputs.src-csfml-master.repo  = "nim-csfml";
  inputs.src-csfml-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-csfml-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-csfml-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}