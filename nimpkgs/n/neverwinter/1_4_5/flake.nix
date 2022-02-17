{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_4_5.flake = false;
  inputs.src-neverwinter-1_4_5.type = "github";
  inputs.src-neverwinter-1_4_5.owner = "niv";
  inputs.src-neverwinter-1_4_5.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_4_5.ref = "refs/tags/1.4.5";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-neverwinter-1_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}