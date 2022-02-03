{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_6_1.flake = false;
  inputs.src-hmisc-v0_6_1.type = "github";
  inputs.src-hmisc-v0_6_1.owner = "haxscramper";
  inputs.src-hmisc-v0_6_1.repo = "hmisc";
  inputs.src-hmisc-v0_6_1.ref = "refs/tags/v0.6.1";
  
  outputs = { self, nixpkgs, src-hmisc-v0_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}