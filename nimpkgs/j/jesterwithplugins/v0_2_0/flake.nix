{
  description = ''A sinatra-like web framework for Nim with plugins.'';
  inputs.src-jesterwithplugins-v0_2_0.flake = false;
  inputs.src-jesterwithplugins-v0_2_0.type = "github";
  inputs.src-jesterwithplugins-v0_2_0.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_2_0.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-jesterwithplugins-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterwithplugins-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}