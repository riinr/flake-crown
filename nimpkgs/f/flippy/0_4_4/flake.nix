{
  description = ''Flippy is a simple 2d image and drawing library.'';
  inputs.src-flippy-0_4_4.flake = false;
  inputs.src-flippy-0_4_4.type = "github";
  inputs.src-flippy-0_4_4.owner = "treeform";
  inputs.src-flippy-0_4_4.repo = "flippy";
  inputs.src-flippy-0_4_4.ref = "refs/tags/0.4.4";
  
  
  inputs."vmath".url = "path:../../../v/vmath";
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."print".url = "path:../../../p/print";
  inputs."print".type = "github";
  inputs."print".owner = "riinr";
  inputs."print".repo = "flake-nimble";
  inputs."print".ref = "flake-pinning";
  inputs."print".dir = "nimpkgs/p/print";

  
  inputs."nimpng".url = "path:../../../n/nimpng";
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  
  inputs."snappy".url = "path:../../../s/snappy";
  inputs."snappy".type = "github";
  inputs."snappy".owner = "riinr";
  inputs."snappy".repo = "flake-nimble";
  inputs."snappy".ref = "flake-pinning";
  inputs."snappy".dir = "nimpkgs/s/snappy";

  outputs = { self, nixpkgs, src-flippy-0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flippy-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flippy-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}