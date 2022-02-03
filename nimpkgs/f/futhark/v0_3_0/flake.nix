{
  description = ''Zero-wrapping C imports in Nim'';
  inputs.src-futhark-v0_3_0.flake = false;
  inputs.src-futhark-v0_3_0.type = "github";
  inputs.src-futhark-v0_3_0.owner = "PMunch";
  inputs.src-futhark-v0_3_0.repo = "futhark";
  inputs.src-futhark-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."https://github.com/pmunch/libclang-nim".url = "path:../../../h/https://github.com/pmunch/libclang-nim";
  inputs."https://github.com/pmunch/libclang-nim".type = "github";
  inputs."https://github.com/pmunch/libclang-nim".owner = "riinr";
  inputs."https://github.com/pmunch/libclang-nim".repo = "flake-nimble";
  inputs."https://github.com/pmunch/libclang-nim".ref = "flake-pinning";
  inputs."https://github.com/pmunch/libclang-nim".dir = "nimpkgs/h/https://github.com/pmunch/libclang-nim";

  
  inputs."termstyle".url = "path:../../../t/termstyle";
  inputs."termstyle".type = "github";
  inputs."termstyle".owner = "riinr";
  inputs."termstyle".repo = "flake-nimble";
  inputs."termstyle".ref = "flake-pinning";
  inputs."termstyle".dir = "nimpkgs/t/termstyle";

  
  inputs."macroutils".url = "path:../../../m/macroutils";
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";

  outputs = { self, nixpkgs, src-futhark-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-futhark-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-futhark-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}