{
  description = ''Experimental wrapper to webgl for Nim'';
  inputs.src-webgl-0_1_2.flake = false;
  inputs.src-webgl-0_1_2.type = "github";
  inputs.src-webgl-0_1_2.owner = "stisa";
  inputs.src-webgl-0_1_2.repo = "webgl";
  inputs.src-webgl-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-WebGL-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-WebGL-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-WebGL-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}