{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_4_4.flake = false;
  inputs.src-neverwinter-1_4_4.type = "github";
  inputs.src-neverwinter-1_4_4.owner = "niv";
  inputs.src-neverwinter-1_4_4.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_4_4.ref = "refs/tags/1.4.4";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-neverwinter-1_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}