{
  description = ''Extensible data notation based on Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_edn-v0_4_10.flake = false;
  inputs.src-cirru_edn-v0_4_10.owner = "Cirru";
  inputs.src-cirru_edn-v0_4_10.ref   = "refs/tags/v0.4.10";
  inputs.src-cirru_edn-v0_4_10.repo  = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_4_10.type  = "github";
  
  inputs."cirru_parser".dir   = "nimpkgs/c/cirru_parser";
  inputs."cirru_parser".owner = "riinr";
  inputs."cirru_parser".ref   = "flake-pinning";
  inputs."cirru_parser".repo  = "flake-nimble";
  inputs."cirru_parser".type  = "github";
  inputs."cirru_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_writer".dir   = "nimpkgs/c/cirru_writer";
  inputs."cirru_writer".owner = "riinr";
  inputs."cirru_writer".ref   = "flake-pinning";
  inputs."cirru_writer".repo  = "flake-nimble";
  inputs."cirru_writer".type  = "github";
  inputs."cirru_writer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_4_10"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_edn-v0_4_10";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}