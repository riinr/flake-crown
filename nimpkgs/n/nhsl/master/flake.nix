{
  description = ''Nim Hessian Serialization Library encodes/decodes data into the Hessian binary protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nhsl-master.flake = false;
  inputs.src-nhsl-master.owner = "twist-vector";
  inputs.src-nhsl-master.ref   = "master";
  inputs.src-nhsl-master.repo  = "nhsl.git";
  inputs.src-nhsl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nhsl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nhsl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}