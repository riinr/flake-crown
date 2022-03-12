{
  description = ''Extensible data notation based on Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_edn-v0_3_6.flake = false;
  inputs.src-cirru_edn-v0_3_6.owner = "Cirru";
  inputs.src-cirru_edn-v0_3_6.ref   = "refs/tags/v0.3.6";
  inputs.src-cirru_edn-v0_3_6.repo  = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_3_6.type  = "github";
  
  inputs."cirru_parser".dir   = "nimpkgs/c/cirru_parser";
  inputs."cirru_parser".owner = "riinr";
  inputs."cirru_parser".ref   = "flake-pinning";
  inputs."cirru_parser".repo  = "flake-nimble";
  inputs."cirru_parser".type  = "github";
  inputs."cirru_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/cirru/writer.nim".dir   = "nimpkgs/h/https://github.com/cirru/writer.nim";
  inputs."https://github.com/cirru/writer.nim".owner = "riinr";
  inputs."https://github.com/cirru/writer.nim".ref   = "flake-pinning";
  inputs."https://github.com/cirru/writer.nim".repo  = "flake-nimble";
  inputs."https://github.com/cirru/writer.nim".type  = "github";
  inputs."https://github.com/cirru/writer.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/cirru/writer.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_3_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_edn-v0_3_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}