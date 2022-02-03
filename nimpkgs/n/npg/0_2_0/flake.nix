{
  description = ''Password generator in Nim'';
  inputs.src-npg-0_2_0.flake = false;
  inputs.src-npg-0_2_0.type = "github";
  inputs.src-npg-0_2_0.owner = "rustomax";
  inputs.src-npg-0_2_0.repo = "npg";
  inputs.src-npg-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."passgen".url = "path:../../../p/passgen";
  inputs."passgen".type = "github";
  inputs."passgen".owner = "riinr";
  inputs."passgen".repo = "flake-nimble";
  inputs."passgen".ref = "flake-pinning";
  inputs."passgen".dir = "nimpkgs/p/passgen";

  outputs = { self, nixpkgs, src-npg-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npg-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-npg-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}