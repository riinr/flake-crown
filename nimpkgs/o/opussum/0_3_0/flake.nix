{
  description = ''Wrapper around libopus'';
  inputs.src-opussum-0_3_0.flake = false;
  inputs.src-opussum-0_3_0.type = "github";
  inputs.src-opussum-0_3_0.owner = "ire4ever1190";
  inputs.src-opussum-0_3_0.repo = "opussum";
  inputs.src-opussum-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-opussum-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opussum-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opussum-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}