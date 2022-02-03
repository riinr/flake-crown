{
  description = ''Parser for Cirru syntax'';
  inputs.src-cirru_parser-v0_2_2.flake = false;
  inputs.src-cirru_parser-v0_2_2.type = "github";
  inputs.src-cirru_parser-v0_2_2.owner = "Cirru";
  inputs.src-cirru_parser-v0_2_2.repo = "parser.nim";
  inputs.src-cirru_parser-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-cirru_parser-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_parser-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_parser-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}