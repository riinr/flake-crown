{
  description = ''Extensible data notation based on Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_edn-v0_3_1.flake = false;
  inputs.src-cirru_edn-v0_3_1.owner = "Cirru";
  inputs.src-cirru_edn-v0_3_1.ref   = "refs/tags/v0.3.1";
  inputs.src-cirru_edn-v0_3_1.repo  = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_3_1.type  = "github";
  
  inputs."cirru-parser".dir   = "nimpkgs/c/cirru-parser";
  inputs."cirru-parser".owner = "riinr";
  inputs."cirru-parser".ref   = "flake-pinning";
  inputs."cirru-parser".repo  = "flake-nimble";
  inputs."cirru-parser".type  = "github";
  inputs."cirru-parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru-parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_edn-v0_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}