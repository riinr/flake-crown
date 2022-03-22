{
  description = ''Special mathematical functions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-special_functions-master.flake = false;
  inputs.src-special_functions-master.ref   = "refs/heads/master";
  inputs.src-special_functions-master.owner = "ayman-albaz";
  inputs.src-special_functions-master.repo  = "special-functions";
  inputs.src-special_functions-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-special_functions-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-special_functions-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}