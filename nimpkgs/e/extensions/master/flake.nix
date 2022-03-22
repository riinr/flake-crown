{
  description = ''Nim extensions. Includes an object oriented programming (oop, class) macro'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-extensions-master.flake = false;
  inputs.src-extensions-master.owner = "jyapayne";
  inputs.src-extensions-master.ref   = "master";
  inputs.src-extensions-master.repo  = "nim-extensions";
  inputs.src-extensions-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-extensions-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-extensions-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}