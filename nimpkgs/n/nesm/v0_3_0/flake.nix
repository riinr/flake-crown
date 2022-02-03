{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_3_0.flake = false;
  inputs.src-nesm-v0_3_0.type = "gitlab";
  inputs.src-nesm-v0_3_0.owner = "xomachine";
  inputs.src-nesm-v0_3_0.repo = "NESM";
  inputs.src-nesm-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-nesm-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}