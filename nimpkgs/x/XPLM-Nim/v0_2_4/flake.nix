{
  description = ''X-Plane XPLM SDK wrapper'';
  inputs.src-XPLM-Nim-v0_2_4.flake = false;
  inputs.src-XPLM-Nim-v0_2_4.type = "github";
  inputs.src-XPLM-Nim-v0_2_4.owner = "jpoirier";
  inputs.src-XPLM-Nim-v0_2_4.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-v0_2_4.ref = "refs/tags/v0.2.4";
  
  outputs = { self, nixpkgs, src-XPLM-Nim-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-XPLM-Nim-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}