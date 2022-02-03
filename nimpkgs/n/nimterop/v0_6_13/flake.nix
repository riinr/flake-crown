{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_6_13.flake = false;
  inputs.src-nimterop-v0_6_13.type = "github";
  inputs.src-nimterop-v0_6_13.owner = "genotrance";
  inputs.src-nimterop-v0_6_13.repo = "nimterop";
  inputs.src-nimterop-v0_6_13.ref = "refs/tags/v0.6.13";
  
  outputs = { self, nixpkgs, src-nimterop-v0_6_13, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_6_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}