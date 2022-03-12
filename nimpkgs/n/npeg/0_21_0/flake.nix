{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-npeg-0_21_0.flake = false;
  inputs.src-npeg-0_21_0.owner = "zevv";
  inputs.src-npeg-0_21_0.ref   = "refs/tags/0.21.0";
  inputs.src-npeg-0_21_0.repo  = "npeg";
  inputs.src-npeg-0_21_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-npeg-0_21_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-npeg-0_21_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}