{
  description = ''Nim wrapper for the FMOD Low Level C API'';
  inputs.src-fmod-v0_1_1.flake = false;
  inputs.src-fmod-v0_1_1.type = "github";
  inputs.src-fmod-v0_1_1.owner = "johnnovak";
  inputs.src-fmod-v0_1_1.repo = "nim-fmod";
  inputs.src-fmod-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-fmod-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fmod-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fmod-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}