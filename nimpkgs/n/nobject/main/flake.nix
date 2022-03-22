{
  description = ''A partially compile and runtime evaluated object, inspired to .net object'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nobject-main.flake = false;
  inputs.src-nobject-main.owner = "Carpall";
  inputs.src-nobject-main.ref   = "main";
  inputs.src-nobject-main.repo  = "nobject";
  inputs.src-nobject-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nobject-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nobject-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}