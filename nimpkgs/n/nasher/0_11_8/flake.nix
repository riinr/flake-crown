{
  description = ''A build tool for Neverwinter Nights projects'';
  inputs.src-nasher-0_11_8.flake = false;
  inputs.src-nasher-0_11_8.type = "github";
  inputs.src-nasher-0_11_8.owner = "squattingmonk";
  inputs.src-nasher-0_11_8.repo = "nasher.nim";
  inputs.src-nasher-0_11_8.ref = "refs/tags/0.11.8";
  
  
  inputs."neverwinter".url = "path:../../../n/neverwinter";
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."glob".url = "path:../../../g/glob";
  inputs."glob".type = "github";
  inputs."glob".owner = "riinr";
  inputs."glob".repo = "flake-nimble";
  inputs."glob".ref = "flake-pinning";
  inputs."glob".dir = "nimpkgs/g/glob";

  outputs = { self, nixpkgs, src-nasher-0_11_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-0_11_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nasher-0_11_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}