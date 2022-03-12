{
  description = ''A game engine for rapid development and easy prototyping'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rapid-2019_1.flake = false;
  inputs.src-rapid-2019_1.owner = "liquid600pgm";
  inputs.src-rapid-2019_1.ref   = "refs/tags/2019.1";
  inputs.src-rapid-2019_1.repo  = "rapid";
  inputs.src-rapid-2019_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rapid-2019_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rapid-2019_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}