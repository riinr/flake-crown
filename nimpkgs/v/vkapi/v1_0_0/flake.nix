{
  description = ''A wrapper for the vk.com API (russian social network)'';
  inputs.src-vkapi-v1_0_0.flake = false;
  inputs.src-vkapi-v1_0_0.type = "github";
  inputs.src-vkapi-v1_0_0.owner = "Yardanico";
  inputs.src-vkapi-v1_0_0.repo = "nimvkapi";
  inputs.src-vkapi-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-vkapi-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vkapi-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vkapi-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}