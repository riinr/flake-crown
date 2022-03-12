{
  description = ''Nancy - Nim fancy ANSI tables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nancy-master.flake = false;
  inputs.src-nancy-master.owner = "PMunch";
  inputs.src-nancy-master.ref   = "refs/heads/master";
  inputs.src-nancy-master.repo  = "nancy";
  inputs.src-nancy-master.type  = "github";
  
  inputs."ansiparse".dir   = "nimpkgs/a/ansiparse";
  inputs."ansiparse".owner = "riinr";
  inputs."ansiparse".ref   = "flake-pinning";
  inputs."ansiparse".repo  = "flake-nimble";
  inputs."ansiparse".type  = "github";
  inputs."ansiparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nancy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nancy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}