{
  description = ''X-Plane XPLM SDK wrapper'';
  inputs.src-XPLM-Nim-v0_2_2.flake = false;
  inputs.src-XPLM-Nim-v0_2_2.type = "github";
  inputs.src-XPLM-Nim-v0_2_2.owner = "jpoirier";
  inputs.src-XPLM-Nim-v0_2_2.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-XPLM-Nim-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-XPLM-Nim-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}