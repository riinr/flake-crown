{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ensem-v1_3_1.flake = false;
  inputs.src-ensem-v1_3_1.ref   = "refs/tags/v1.3.1";
  inputs.src-ensem-v1_3_1.owner = "JeffersonLab";
  inputs.src-ensem-v1_3_1.repo  = "ensem";
  inputs.src-ensem-v1_3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ensem-v1_3_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ensem-v1_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}