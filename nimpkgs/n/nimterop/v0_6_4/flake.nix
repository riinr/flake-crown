{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_6_4.flake = false;
  inputs.src-nimterop-v0_6_4.type = "github";
  inputs.src-nimterop-v0_6_4.owner = "genotrance";
  inputs.src-nimterop-v0_6_4.repo = "nimterop";
  inputs.src-nimterop-v0_6_4.ref = "refs/tags/v0.6.4";
  
  outputs = { self, nixpkgs, src-nimterop-v0_6_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_6_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}