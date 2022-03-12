{
  description = ''Support for serialization of objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-serializetools-v1_4_0.flake = false;
  inputs.src-serializetools-v1_4_0.owner = "JeffersonLab";
  inputs.src-serializetools-v1_4_0.ref   = "refs/tags/v1.4.0";
  inputs.src-serializetools-v1_4_0.repo  = "serializetools";
  inputs.src-serializetools-v1_4_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-serializetools-v1_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-serializetools-v1_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}