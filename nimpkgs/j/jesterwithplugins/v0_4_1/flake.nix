{
  description = ''A sinatra-like web framework for Nim with plugins.'';
  inputs.src-jesterwithplugins-v0_4_1.flake = false;
  inputs.src-jesterwithplugins-v0_4_1.type = "github";
  inputs.src-jesterwithplugins-v0_4_1.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_4_1.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, src-jesterwithplugins-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterwithplugins-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}