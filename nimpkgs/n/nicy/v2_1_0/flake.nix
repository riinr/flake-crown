{
  description = ''A nice and icy ZSH prompt in Nim'';
  inputs.src-nicy-v2_1_0.flake = false;
  inputs.src-nicy-v2_1_0.type = "github";
  inputs.src-nicy-v2_1_0.owner = "icyphox";
  inputs.src-nicy-v2_1_0.repo = "nicy";
  inputs.src-nicy-v2_1_0.ref = "refs/tags/v2.1.0";
  
  outputs = { self, nixpkgs, src-nicy-v2_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nicy-v2_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nicy-v2_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}