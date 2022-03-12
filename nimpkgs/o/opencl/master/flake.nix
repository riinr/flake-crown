{
  description = ''Low-level wrapper for OpenCL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opencl-master.flake = false;
  inputs.src-opencl-master.owner = "nim-lang";
  inputs.src-opencl-master.ref   = "refs/heads/master";
  inputs.src-opencl-master.repo  = "opencl";
  inputs.src-opencl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opencl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opencl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}