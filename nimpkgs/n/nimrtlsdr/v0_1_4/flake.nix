{
  description = ''A Nim wrapper for librtlsdr'';
  inputs.src-nimrtlsdr-v0_1_4.flake = false;
  inputs.src-nimrtlsdr-v0_1_4.type = "github";
  inputs.src-nimrtlsdr-v0_1_4.owner = "jpoirier";
  inputs.src-nimrtlsdr-v0_1_4.repo = "nimrtlsdr";
  inputs.src-nimrtlsdr-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-nimrtlsdr-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrtlsdr-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrtlsdr-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}