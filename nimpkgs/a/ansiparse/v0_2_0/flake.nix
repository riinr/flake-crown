{
  description = ''A package to read data and parse it into ANSI escape characters'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ansiparse-v0_2_0.flake = false;
  inputs.src-ansiparse-v0_2_0.owner = "PMunch";
  inputs.src-ansiparse-v0_2_0.ref   = "v0_2_0";
  inputs.src-ansiparse-v0_2_0.repo  = "ansiparse";
  inputs.src-ansiparse-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ansiparse-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ansiparse-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}