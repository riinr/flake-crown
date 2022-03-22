{
  description = ''OpenCL utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcl-0_1_3.flake = false;
  inputs.src-nimcl-0_1_3.owner = "andreaferretti";
  inputs.src-nimcl-0_1_3.ref   = "0_1_3";
  inputs.src-nimcl-0_1_3.repo  = "nimcl";
  inputs.src-nimcl-0_1_3.type  = "github";
  
  inputs."opencl".owner = "nim-nix-pkgs";
  inputs."opencl".ref   = "master";
  inputs."opencl".repo  = "opencl";
  inputs."opencl".dir   = "";
  inputs."opencl".type  = "github";
  inputs."opencl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcl-0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcl-0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}