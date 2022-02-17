{
  description = ''The Ultimate Raylib gaming library wrapper'';
  inputs.src-nimraylib_now-v0_4_0.flake = false;
  inputs.src-nimraylib_now-v0_4_0.type = "github";
  inputs.src-nimraylib_now-v0_4_0.owner = "greenfork";
  inputs.src-nimraylib_now-v0_4_0.repo = "nimraylib_now";
  inputs.src-nimraylib_now-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";

  outputs = { self, nixpkgs, src-nimraylib_now-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimraylib_now-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimraylib_now-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}