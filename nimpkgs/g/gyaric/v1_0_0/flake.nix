{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';
  inputs.src-gyaric-v1_0_0.flake = false;
  inputs.src-gyaric-v1_0_0.type = "github";
  inputs.src-gyaric-v1_0_0.owner = "jiro4989";
  inputs.src-gyaric-v1_0_0.repo = "gyaric";
  inputs.src-gyaric-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-gyaric-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gyaric-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gyaric-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}