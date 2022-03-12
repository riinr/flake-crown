{
  description = ''Extensible data notation based on Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_edn-v0_4_3.flake = false;
  inputs.src-cirru_edn-v0_4_3.owner = "Cirru";
  inputs.src-cirru_edn-v0_4_3.ref   = "refs/tags/v0.4.3";
  inputs.src-cirru_edn-v0_4_3.repo  = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_4_3.type  = "github";
  
  inputs."cirru_parser".owner = "nim-nix-pkgs";
  inputs."cirru_parser".ref   = "master";
  inputs."cirru_parser".repo  = "cirru_parser";
  inputs."cirru_parser".type  = "github";
  inputs."cirru_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/cirru/writer.nim".owner = "nim-nix-pkgs";
  inputs."https://github.com/cirru/writer.nim".ref   = "master";
  inputs."https://github.com/cirru/writer.nim".repo  = "https://github.com/cirru/writer.nim";
  inputs."https://github.com/cirru/writer.nim".type  = "github";
  inputs."https://github.com/cirru/writer.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/cirru/writer.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_4_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_edn-v0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}