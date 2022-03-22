{
  description = ''Cirru EDN loader in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_edn-v0_3_7.flake = false;
  inputs.src-cirru_edn-v0_3_7.ref   = "refs/tags/v0.3.7";
  inputs.src-cirru_edn-v0_3_7.owner = "Cirru";
  inputs.src-cirru_edn-v0_3_7.repo  = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_3_7.type  = "github";
  
  inputs."cirru_parser".owner = "nim-nix-pkgs";
  inputs."cirru_parser".ref   = "master";
  inputs."cirru_parser".repo  = "cirru_parser";
  inputs."cirru_parser".dir   = "v0_3_0";
  inputs."cirru_parser".type  = "github";
  inputs."cirru_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_3_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_edn-v0_3_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}