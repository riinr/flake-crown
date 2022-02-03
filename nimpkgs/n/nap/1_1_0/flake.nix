{
  description = ''Argument parser'';
  inputs.src-nap-1_1_0.flake = false;
  inputs.src-nap-1_1_0.type = "github";
  inputs.src-nap-1_1_0.owner = "madprops";
  inputs.src-nap-1_1_0.repo = "nap";
  inputs.src-nap-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-nap-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nap-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}