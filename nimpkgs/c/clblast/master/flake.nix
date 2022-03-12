{
  description = ''Wrapper for CLBlast, an OpenCL BLAS library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-clblast-master.flake = false;
  inputs.src-clblast-master.owner = "numforge";
  inputs.src-clblast-master.ref   = "refs/heads/master";
  inputs.src-clblast-master.repo  = "nim-clblast";
  inputs.src-clblast-master.type  = "github";
  
  inputs."opencl".owner = "nim-nix-pkgs";
  inputs."opencl".ref   = "master";
  inputs."opencl".repo  = "opencl";
  inputs."opencl".type  = "github";
  inputs."opencl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-clblast-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-clblast-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}