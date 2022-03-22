{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ensem-v1_2_2.flake = false;
  inputs.src-ensem-v1_2_2.ref   = "refs/tags/v1.2.2";
  inputs.src-ensem-v1_2_2.owner = "JeffersonLab";
  inputs.src-ensem-v1_2_2.repo  = "ensem";
  inputs.src-ensem-v1_2_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ensem-v1_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ensem-v1_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}