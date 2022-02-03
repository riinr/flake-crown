{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';
  inputs.src-nwnt-v1_3_0.flake = false;
  inputs.src-nwnt-v1_3_0.type = "github";
  inputs.src-nwnt-v1_3_0.owner = "WilliamDraco";
  inputs.src-nwnt-v1_3_0.repo = "NWNT";
  inputs.src-nwnt-v1_3_0.ref = "refs/tags/v1.3.0";
  
  
  inputs."neverwinter".url = "path:../../../n/neverwinter";
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-nwnt-v1_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwnt-v1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwnt-v1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}