{
  description = ''Support for serialization of objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-serializetools-v1_3_1.flake = false;
  inputs.src-serializetools-v1_3_1.ref   = "refs/tags/v1.3.1";
  inputs.src-serializetools-v1_3_1.owner = "JeffersonLab";
  inputs.src-serializetools-v1_3_1.repo  = "serializetools";
  inputs.src-serializetools-v1_3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-serializetools-v1_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-serializetools-v1_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}