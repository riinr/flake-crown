{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_4_3.flake = false;
  inputs.src-neverwinter-1_4_3.type = "github";
  inputs.src-neverwinter-1_4_3.owner = "niv";
  inputs.src-neverwinter-1_4_3.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_4_3.ref = "refs/tags/1.4.3";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-neverwinter-1_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}