{
  description = ''Nim wrappers for tree-sitter parser grammars'';
  inputs.src-htsparse-0_1_1.flake = false;
  inputs.src-htsparse-0_1_1.type = "github";
  inputs.src-htsparse-0_1_1.owner = "haxscramper";
  inputs.src-htsparse-0_1_1.repo = "htsparse";
  inputs.src-htsparse-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."hparse".type = "github";
  inputs."hparse".owner = "riinr";
  inputs."hparse".repo = "flake-nimble";
  inputs."hparse".ref = "flake-pinning";
  inputs."hparse".dir = "nimpkgs/h/hparse";

  outputs = { self, nixpkgs, src-htsparse-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htsparse-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htsparse-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}