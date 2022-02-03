{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_2.flake = false;
  inputs.src-redismodules-v0_1_2.type = "github";
  inputs.src-redismodules-v0_1_2.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_2.repo = "redismodules";
  inputs.src-redismodules-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}