{
  description = ''Internationalization at Compile Time for Nim. Macro to translate unmodified code from 1 INI file. NimScript compatible.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimterlingua-master.flake = false;
  inputs.src-nimterlingua-master.owner = "juancarlospaco";
  inputs.src-nimterlingua-master.ref   = "master";
  inputs.src-nimterlingua-master.repo  = "nim-internimgua";
  inputs.src-nimterlingua-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimterlingua-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimterlingua-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}