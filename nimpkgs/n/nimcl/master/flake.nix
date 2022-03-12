{
  description = ''High level wrapper over OpenCL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcl-master.flake = false;
  inputs.src-nimcl-master.owner = "andreaferretti";
  inputs.src-nimcl-master.ref   = "refs/heads/master";
  inputs.src-nimcl-master.repo  = "nimcl";
  inputs.src-nimcl-master.type  = "github";
  
  inputs."opencl".dir   = "nimpkgs/o/opencl";
  inputs."opencl".owner = "riinr";
  inputs."opencl".ref   = "flake-pinning";
  inputs."opencl".repo  = "flake-nimble";
  inputs."opencl".type  = "github";
  inputs."opencl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}