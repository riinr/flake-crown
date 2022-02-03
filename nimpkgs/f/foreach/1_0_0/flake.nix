{
  description = ''A sugary for loop with syntax for typechecking loop variables'';
  inputs.src-foreach-1_0_0.flake = false;
  inputs.src-foreach-1_0_0.type = "github";
  inputs.src-foreach-1_0_0.owner = "disruptek";
  inputs.src-foreach-1_0_0.repo = "foreach";
  inputs.src-foreach-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-foreach-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-foreach-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-foreach-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}