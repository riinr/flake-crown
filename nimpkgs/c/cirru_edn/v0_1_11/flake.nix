{
  description = ''Extensible data notation based on Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_edn-v0_1_11.flake = false;
  inputs.src-cirru_edn-v0_1_11.ref   = "refs/tags/v0.1.11";
  inputs.src-cirru_edn-v0_1_11.owner = "Cirru";
  inputs.src-cirru_edn-v0_1_11.repo  = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_1_11.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_1_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_edn-v0_1_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}