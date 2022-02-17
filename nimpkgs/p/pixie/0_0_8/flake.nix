{
  description = ''Full-featured 2d graphics library for Nim.'';
  inputs.src-pixie-0_0_8.flake = false;
  inputs.src-pixie-0_0_8.type = "github";
  inputs.src-pixie-0_0_8.owner = "treeform";
  inputs.src-pixie-0_0_8.repo = "pixie";
  inputs.src-pixie-0_0_8.ref = "refs/tags/0.0.8";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";

  
  inputs."nimsimd".type = "github";
  inputs."nimsimd".owner = "riinr";
  inputs."nimsimd".repo = "flake-nimble";
  inputs."nimsimd".ref = "flake-pinning";
  inputs."nimsimd".dir = "nimpkgs/n/nimsimd";

  
  inputs."bumpy".type = "github";
  inputs."bumpy".owner = "riinr";
  inputs."bumpy".repo = "flake-nimble";
  inputs."bumpy".ref = "flake-pinning";
  inputs."bumpy".dir = "nimpkgs/b/bumpy";

  outputs = { self, nixpkgs, src-pixie-0_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pixie-0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pixie-0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}